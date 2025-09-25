.class public final Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IndexAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsg/dani/songs/adapters/IndexAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "v",
        "Landroid/view/View;",
        "(Lgsg/dani/songs/adapters/IndexAdapter;Landroid/view/View;)V",
        "number",
        "Landroid/widget/TextView;",
        "getNumber",
        "()Landroid/widget/TextView;",
        "setNumber",
        "(Landroid/widget/TextView;)V",
        "songName",
        "getSongName",
        "setSongName",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private number:Landroid/widget/TextView;

.field private songName:Landroid/widget/TextView;

.field final synthetic this$0:Lgsg/dani/songs/adapters/IndexAdapter;


# direct methods
.method public constructor <init>(Lgsg/dani/songs/adapters/IndexAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "$outer"    # Lgsg/dani/songs/adapters/IndexAdapter;
    .param p2, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->this$0:Lgsg/dani/songs/adapters/IndexAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    const v0, 0x7f080008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->songName:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f08008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->number:Landroid/widget/TextView;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getNumber()Landroid/widget/TextView;
    .locals 1

    .line 48
    iget-object v0, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->number:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSongName()Landroid/widget/TextView;
    .locals 1

    .line 47
    iget-object v0, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->songName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setNumber(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->number:Landroid/widget/TextView;

    return-void
.end method

.method public final setSongName(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/widget/TextView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lgsg/dani/songs/adapters/IndexAdapter$ViewHolder;->songName:Landroid/widget/TextView;

    return-void
.end method
