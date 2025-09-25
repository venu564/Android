.class final Lgsg/dani/songs/Songs$onCreate$3;
.super Ljava/lang/Object;
.source "Songs.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/Songs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgsg/dani/songs/Songs;


# direct methods
.method constructor <init>(Lgsg/dani/songs/Songs;)V
    .locals 0

    iput-object p1, p0, Lgsg/dani/songs/Songs$onCreate$3;->this$0:Lgsg/dani/songs/Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 113
    sget-object v0, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    invoke-virtual {v0}, Lgsg/dani/songs/Songs$Companion;->getSONGNUMBER()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lgsg/dani/songs/Songs$onCreate$3;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 114
    sget-object v0, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    invoke-virtual {v0}, Lgsg/dani/songs/Songs$Companion;->getSONGNUMBER()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lgsg/dani/songs/Songs$Companion;->setSONGNUMBER(I)V

    .line 115
    iget-object v0, p0, Lgsg/dani/songs/Songs$onCreate$3;->this$0:Lgsg/dani/songs/Songs;

    invoke-static {v0}, Lgsg/dani/songs/Songs;->access$dbQuery(Lgsg/dani/songs/Songs;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lgsg/dani/songs/Songs$onCreate$3;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v0}, Lgsg/dani/songs/Songs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgsg/dani/songs/Songs$onCreate$3;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v3}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Last Song "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    :goto_0
    nop

    .line 121
    return-void
.end method
