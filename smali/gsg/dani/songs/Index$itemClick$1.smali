.class public final Lgsg/dani/songs/Index$itemClick$1;
.super Ljava/lang/Object;
.source "Index.kt"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/Index;->itemClick()V
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "gsg/dani/songs/Index$itemClick$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "getGestureDetector$app_debug",
        "()Landroid/view/GestureDetector;",
        "setGestureDetector$app_debug",
        "(Landroid/view/GestureDetector;)V",
        "onInterceptTouchEvent",
        "",
        "Recyclerview",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "onRequestDisallowInterceptTouchEvent",
        "",
        "disallowIntercept",
        "onTouchEvent",
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
.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lgsg/dani/songs/Index;


# direct methods
.method constructor <init>(Lgsg/dani/songs/Index;)V
    .locals 3
    .param p1, "$outer"    # Lgsg/dani/songs/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lgsg/dani/songs/Index;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    new-instance v2, Lgsg/dani/songs/Index$itemClick$1$gestureDetector$1;

    invoke-direct {v2}, Lgsg/dani/songs/Index$itemClick$1$gestureDetector$1;-><init>()V

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    .line 60
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lgsg/dani/songs/Index$itemClick$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final getGestureDetector$app_debug()Landroid/view/GestureDetector;
    .locals 1

    .line 60
    iget-object v0, p0, Lgsg/dani/songs/Index$itemClick$1;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "Recyclerview"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "Recyclerview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lgsg/dani/songs/Index$itemClick$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lgsg/dani/songs/Index;->setRecyclerViewItemPosition$app_debug(I)V

    .line 74
    sget-object v1, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    iget-object v2, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v2}, Lgsg/dani/songs/Index;->getRecyclerViewItemPosition$app_debug()I

    move-result v2

    invoke-virtual {v1, v2}, Lgsg/dani/songs/Index$Companion;->setSelectedIndex$app_debug(I)V

    .line 76
    iget-object v1, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v1}, Lgsg/dani/songs/Index;->getListarray$app_debug()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v2}, Lgsg/dani/songs/Index;->getRecyclerViewItemPosition$app_debug()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "listarray[RecyclerViewItemPosition]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lgsg/dani/songs/db/StringsDetails;

    .line 77
    .local v1, "model":Lgsg/dani/songs/db/StringsDetails;
    invoke-virtual {v1}, Lgsg/dani/songs/db/StringsDetails;->getId()I

    move-result v2

    .line 81
    .local v2, "NUMBER":I
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v4}, Lgsg/dani/songs/Index;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lgsg/dani/songs/Songs;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v3, "intent":Landroid/content/Intent;
    sget-object v4, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v4}, Lgsg/dani/songs/Index$Companion;->getTOTALNUMBERS()I

    move-result v4

    const-string v5, "TOTALNUMBERS"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    sget-object v4, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v4}, Lgsg/dani/songs/Index$Companion;->getBOOKNAME()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BOOKNAME"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v4, "SONGNUMBER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v4}, Lgsg/dani/songs/Index;->getTitle$app_debug()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Title"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v4, v3}, Lgsg/dani/songs/Index;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    sget v5, Lgsg/dani/songs/R$id;->searchBYname:I

    invoke-virtual {v4, v5}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v5, "searchBYname"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 89
    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    sget v5, Lgsg/dani/songs/R$id;->SearchBYnumber:I

    invoke-virtual {v4, v5}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v5, "SearchBYnumber"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 90
    iget-object v4, p0, Lgsg/dani/songs/Index$itemClick$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v4}, Lgsg/dani/songs/Index;->finish()V

    .line 95
    .end local v1    # "model":Lgsg/dani/songs/db/StringsDetails;
    .end local v2    # "NUMBER":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "Recyclerview"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    const-string v0, "Recyclerview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final setGestureDetector$app_debug(Landroid/view/GestureDetector;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/view/GestureDetector;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lgsg/dani/songs/Index$itemClick$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
