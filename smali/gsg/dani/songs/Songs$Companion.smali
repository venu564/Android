.class public final Lgsg/dani/songs/Songs$Companion;
.super Ljava/lang/Object;
.source "Songs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsg/dani/songs/Songs;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lgsg/dani/songs/Songs$Companion;",
        "",
        "()V",
        "BOOKNAME",
        "",
        "getBOOKNAME",
        "()Ljava/lang/String;",
        "setBOOKNAME",
        "(Ljava/lang/String;)V",
        "SONGNUMBER",
        "",
        "getSONGNUMBER",
        "()I",
        "setSONGNUMBER",
        "(I)V",
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

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 193
    invoke-direct {p0}, Lgsg/dani/songs/Songs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBOOKNAME()Ljava/lang/String;
    .locals 1

    .line 194
    invoke-static {}, Lgsg/dani/songs/Songs;->access$getBOOKNAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSONGNUMBER()I
    .locals 1

    .line 195
    invoke-static {}, Lgsg/dani/songs/Songs;->access$getSONGNUMBER$cp()I

    move-result v0

    return v0
.end method

.method public final setBOOKNAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lgsg/dani/songs/Songs;->access$setBOOKNAME$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setSONGNUMBER(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 195
    invoke-static {p1}, Lgsg/dani/songs/Songs;->access$setSONGNUMBER$cp(I)V

    return-void
.end method
