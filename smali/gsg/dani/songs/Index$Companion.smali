.class public final Lgsg/dani/songs/Index$Companion;
.super Ljava/lang/Object;
.source "Index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsg/dani/songs/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lgsg/dani/songs/Index$Companion;",
        "",
        "()V",
        "BOOKNAME",
        "",
        "getBOOKNAME",
        "()Ljava/lang/String;",
        "setBOOKNAME",
        "(Ljava/lang/String;)V",
        "Column_Name",
        "getColumn_Name",
        "setColumn_Name",
        "Search_String",
        "getSearch_String",
        "setSearch_String",
        "TOTALNUMBERS",
        "",
        "getTOTALNUMBERS",
        "()I",
        "setTOTALNUMBERS",
        "(I)V",
        "scrollPostion",
        "getScrollPostion",
        "setScrollPostion",
        "selectedIndex",
        "getSelectedIndex$app_debug",
        "setSelectedIndex$app_debug",
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
.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 205
    invoke-direct {p0}, Lgsg/dani/songs/Index$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBOOKNAME()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-static {}, Lgsg/dani/songs/Index;->access$getBOOKNAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getColumn_Name()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {}, Lgsg/dani/songs/Index;->access$getColumn_Name$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScrollPostion()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {}, Lgsg/dani/songs/Index;->access$getScrollPostion$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSearch_String()Ljava/lang/String;
    .locals 1

    .line 209
    invoke-static {}, Lgsg/dani/songs/Index;->access$getSearch_String$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedIndex$app_debug()I
    .locals 1

    .line 214
    invoke-static {}, Lgsg/dani/songs/Index;->access$getSelectedIndex$cp()I

    move-result v0

    return v0
.end method

.method public final getTOTALNUMBERS()I
    .locals 1

    .line 208
    invoke-static {}, Lgsg/dani/songs/Index;->access$getTOTALNUMBERS$cp()I

    move-result v0

    return v0
.end method

.method public final setBOOKNAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setBOOKNAME$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setColumn_Name(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 211
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setColumn_Name$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setScrollPostion(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setScrollPostion$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setSearch_String(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setSearch_String$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setSelectedIndex$app_debug(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 214
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setSelectedIndex$cp(I)V

    return-void
.end method

.method public final setTOTALNUMBERS(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 208
    invoke-static {p1}, Lgsg/dani/songs/Index;->access$setTOTALNUMBERS$cp(I)V

    return-void
.end method
