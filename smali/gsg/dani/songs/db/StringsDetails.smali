.class public final Lgsg/dani/songs/db/StringsDetails;
.super Ljava/lang/Object;
.source "StringsDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lgsg/dani/songs/db/StringsDetails;",
        "Ljava/io/Serializable;",
        "()V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "songName",
        "",
        "getSongName",
        "()Ljava/lang/String;",
        "setSongName",
        "(Ljava/lang/String;)V",
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
.field private id:I

.field private songName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lgsg/dani/songs/db/StringsDetails;->id:I

    return v0
.end method

.method public final getSongName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lgsg/dani/songs/db/StringsDetails;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 9
    iput p1, p0, Lgsg/dani/songs/db/StringsDetails;->id:I

    return-void
.end method

.method public final setSongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lgsg/dani/songs/db/StringsDetails;->songName:Ljava/lang/String;

    return-void
.end method
