.class final Lgsg/dani/songs/MainActivity$onKeyUp$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/MainActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "paramDialogInterface",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "paramInt",
        "",
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
.field final synthetic this$0:Lgsg/dani/songs/MainActivity;


# direct methods
.method constructor <init>(Lgsg/dani/songs/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lgsg/dani/songs/MainActivity$onKeyUp$1;->this$0:Lgsg/dani/songs/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramInt"    # I

    .line 316
    iget-object v0, p0, Lgsg/dani/songs/MainActivity$onKeyUp$1;->this$0:Lgsg/dani/songs/MainActivity;

    invoke-virtual {v0}, Lgsg/dani/songs/MainActivity;->finish()V

    return-void
.end method
