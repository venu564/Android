.class public final Lgsg/dani/songs/Index;
.super Landroid/app/Activity;
.source "Index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgsg/dani/songs/Index$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Index.kt\ngsg/dani/songs/Index\n*L\n1#1,217:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u0017H\u0002J\u0012\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lgsg/dani/songs/Index;",
        "Landroid/app/Activity;",
        "()V",
        "RecyclerViewItemPosition",
        "",
        "getRecyclerViewItemPosition$app_debug",
        "()I",
        "setRecyclerViewItemPosition$app_debug",
        "(I)V",
        "Title",
        "",
        "getTitle$app_debug",
        "()Ljava/lang/String;",
        "setTitle$app_debug",
        "(Ljava/lang/String;)V",
        "listarray",
        "Ljava/util/ArrayList;",
        "Lgsg/dani/songs/db/StringsDetails;",
        "getListarray$app_debug",
        "()Ljava/util/ArrayList;",
        "setListarray$app_debug",
        "(Ljava/util/ArrayList;)V",
        "dbQuery",
        "",
        "itemClick",
        "nameSearch",
        "numberSearch",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static BOOKNAME:Ljava/lang/String;

.field private static Column_Name:Ljava/lang/String;

.field public static final Companion:Lgsg/dani/songs/Index$Companion;

.field private static Search_String:Ljava/lang/String;

.field private static TOTALNUMBERS:I

.field private static scrollPostion:Ljava/lang/String;

.field private static selectedIndex:I


# instance fields
.field private RecyclerViewItemPosition:I

.field private Title:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private listarray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgsg/dani/songs/db/StringsDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgsg/dani/songs/Index$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgsg/dani/songs/Index$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    .line 209
    const-string v0, "%"

    sput-object v0, Lgsg/dani/songs/Index;->Search_String:Ljava/lang/String;

    .line 211
    const-string v0, "Number"

    sput-object v0, Lgsg/dani/songs/Index;->Column_Name:Ljava/lang/String;

    .line 212
    const-string v0, "0"

    sput-object v0, Lgsg/dani/songs/Index;->scrollPostion:Ljava/lang/String;

    .line 214
    const/4 v0, -0x1

    sput v0, Lgsg/dani/songs/Index;->selectedIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgsg/dani/songs/Index;->listarray:Ljava/util/ArrayList;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lgsg/dani/songs/Index;->Title:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$dbQuery(Lgsg/dani/songs/Index;)V
    .locals 0
    .param p0, "$this"    # Lgsg/dani/songs/Index;

    .line 23
    invoke-direct {p0}, Lgsg/dani/songs/Index;->dbQuery()V

    return-void
.end method

.method public static final synthetic access$getBOOKNAME$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lgsg/dani/songs/Index;->BOOKNAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getColumn_Name$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lgsg/dani/songs/Index;->Column_Name:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getScrollPostion$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lgsg/dani/songs/Index;->scrollPostion:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSearch_String$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lgsg/dani/songs/Index;->Search_String:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSelectedIndex$cp()I
    .locals 1

    .line 23
    sget v0, Lgsg/dani/songs/Index;->selectedIndex:I

    return v0
.end method

.method public static final synthetic access$getTOTALNUMBERS$cp()I
    .locals 1

    .line 23
    sget v0, Lgsg/dani/songs/Index;->TOTALNUMBERS:I

    return v0
.end method

.method public static final synthetic access$setBOOKNAME$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 23
    sput-object p0, Lgsg/dani/songs/Index;->BOOKNAME:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setColumn_Name$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 23
    sput-object p0, Lgsg/dani/songs/Index;->Column_Name:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setScrollPostion$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 23
    sput-object p0, Lgsg/dani/songs/Index;->scrollPostion:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSearch_String$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 23
    sput-object p0, Lgsg/dani/songs/Index;->Search_String:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedIndex$cp(I)V
    .locals 0
    .param p0, "<set-?>"    # I

    .line 23
    sput p0, Lgsg/dani/songs/Index;->selectedIndex:I

    return-void
.end method

.method public static final synthetic access$setTOTALNUMBERS$cp(I)V
    .locals 0
    .param p0, "<set-?>"    # I

    .line 23
    sput p0, Lgsg/dani/songs/Index;->TOTALNUMBERS:I

    return-void
.end method

.method private final dbQuery()V
    .locals 9

    .line 157
    const-string v0, "RecycleViewList"

    .line 158
    :try_start_0
    new-instance v1, Lgsg/dani/songs/db/DBinRAW;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lgsg/dani/songs/db/DBinRAW;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "db":Lgsg/dani/songs/db/DBinRAW;
    invoke-virtual {v1}, Lgsg/dani/songs/db/DBinRAW;->getIndexTable()Ljava/util/List;

    move-result-object v2

    .line 160
    .local v2, "contacts":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgsg/dani/songs/db/StringsDetails;

    .line 164
    .local v4, "cn":Lgsg/dani/songs/db/StringsDetails;
    invoke-virtual {v4}, Lgsg/dani/songs/db/StringsDetails;->getId()I

    move-result v5

    .line 165
    .local v5, "SongNumber":I
    sget v6, Lgsg/dani/songs/Index;->TOTALNUMBERS:I

    if-gt v5, v6, :cond_0

    .line 168
    iget-object v6, p0, Lgsg/dani/songs/Index;->listarray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v4    # "cn":Lgsg/dani/songs/db/StringsDetails;
    .end local v5    # "SongNumber":I
    :cond_1
    new-instance v3, Lgsg/dani/songs/adapters/IndexAdapter;

    invoke-virtual {p0}, Lgsg/dani/songs/Index;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lgsg/dani/songs/Index;->listarray:Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lgsg/dani/songs/adapters/IndexAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 175
    .local v3, "myAdapter":Lgsg/dani/songs/adapters/IndexAdapter;
    sget v4, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v4}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lgsg/dani/songs/Index;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 176
    sget v4, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v4}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 177
    sget v4, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v4}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    sget v4, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v4}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 179
    sget v4, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v4}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 180
    sget v0, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    sget-object v4, Lgsg/dani/songs/Index;->scrollPostion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "db":Lgsg/dani/songs/db/DBinRAW;
    .end local v2    # "contacts":Ljava/util/List;
    .end local v3    # "myAdapter":Lgsg/dani/songs/adapters/IndexAdapter;
    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "___error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 189
    return-void
.end method

.method private final itemClick()V
    .locals 2

    .line 59
    sget v0, Lgsg/dani/songs/R$id;->RecycleViewList:I

    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lgsg/dani/songs/Index$itemClick$1;

    invoke-direct {v1, p0}, Lgsg/dani/songs/Index$itemClick$1;-><init>(Lgsg/dani/songs/Index;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 106
    return-void
.end method

.method private final nameSearch()V
    .locals 2

    .line 110
    sget v0, Lgsg/dani/songs/R$id;->searchBYname:I

    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lgsg/dani/songs/Index$nameSearch$1;

    invoke-direct {v1, p0}, Lgsg/dani/songs/Index$nameSearch$1;-><init>(Lgsg/dani/songs/Index;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    return-void
.end method

.method private final numberSearch()V
    .locals 2

    .line 133
    sget v0, Lgsg/dani/songs/R$id;->SearchBYnumber:I

    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lgsg/dani/songs/Index$numberSearch$1;

    invoke-direct {v1, p0}, Lgsg/dani/songs/Index$numberSearch$1;-><init>(Lgsg/dani/songs/Index;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lgsg/dani/songs/Index;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lgsg/dani/songs/Index;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgsg/dani/songs/Index;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lgsg/dani/songs/Index;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lgsg/dani/songs/Index;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getListarray$app_debug()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lgsg/dani/songs/db/StringsDetails;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lgsg/dani/songs/Index;->listarray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRecyclerViewItemPosition$app_debug()I
    .locals 1

    .line 26
    iget v0, p0, Lgsg/dani/songs/Index;->RecyclerViewItemPosition:I

    return v0
.end method

.method public final getTitle$app_debug()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lgsg/dani/songs/Index;->Title:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lgsg/dani/songs/Index;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "TOTALNUMBERS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lgsg/dani/songs/Index;->TOTALNUMBERS:I

    .line 36
    const-string v2, "BOOKNAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lgsg/dani/songs/Index;->BOOKNAME:Ljava/lang/String;

    .line 37
    const-string v2, "Title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgsg/dani/songs/Index;->Title:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lgsg/dani/songs/Index;->dbQuery()V

    .line 41
    sget-object v2, Lgsg/dani/songs/Index;->BOOKNAME:Ljava/lang/String;

    const-string v3, "Eng_Song_Name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lgsg/dani/songs/Index;->BOOKNAME:Ljava/lang/String;

    const-string v3, "Eng_Chrous_Name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    sget v2, Lgsg/dani/songs/R$id;->searchBYname:I

    invoke-virtual {p0, v2}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "searchBYname"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 46
    sget v2, Lgsg/dani/songs/R$id;->divider__:I

    invoke-virtual {p0, v2}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-direct {p0}, Lgsg/dani/songs/Index;->numberSearch()V

    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    invoke-direct {p0}, Lgsg/dani/songs/Index;->nameSearch()V

    .line 43
    invoke-direct {p0}, Lgsg/dani/songs/Index;->numberSearch()V

    .line 53
    :goto_1
    nop

    .line 55
    invoke-direct {p0}, Lgsg/dani/songs/Index;->itemClick()V

    .line 56
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lgsg/dani/songs/Index;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lgsg/dani/songs/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lgsg/dani/songs/Index;->startActivity(Landroid/content/Intent;)V

    .line 195
    const v1, 0x7f020007

    invoke-virtual {p0, v1, v1}, Lgsg/dani/songs/Index;->overridePendingTransition(II)V

    .line 196
    sget v1, Lgsg/dani/songs/R$id;->searchBYname:I

    invoke-virtual {p0, v1}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 197
    sget v1, Lgsg/dani/songs/R$id;->SearchBYnumber:I

    invoke-virtual {p0, v1}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "SearchBYnumber"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 198
    invoke-virtual {p0}, Lgsg/dani/songs/Index;->finish()V

    .line 200
    const/4 v1, 0x1

    return v1

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setListarray$app_debug(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lgsg/dani/songs/db/StringsDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lgsg/dani/songs/Index;->listarray:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRecyclerViewItemPosition$app_debug(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 26
    iput p1, p0, Lgsg/dani/songs/Index;->RecyclerViewItemPosition:I

    return-void
.end method

.method public final setTitle$app_debug(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lgsg/dani/songs/Index;->Title:Ljava/lang/String;

    return-void
.end method
