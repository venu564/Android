.class public final Lgsg/dani/songs/Index$itemClick$1$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/Index$itemClick$1;-><init>(Lgsg/dani/songs/Index;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "gsg/dani/songs/Index$itemClick$1$gestureDetector$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onSingleTapUp",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method
