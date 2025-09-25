.class final Lgsg/dani/songs/Songs$onCreate$1;
.super Ljava/lang/Object;
.source "Songs.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/Songs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSongs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Songs.kt\ngsg/dani/songs/Songs$onCreate$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,198:1\n45#2:199\n17#2,22:200\n*E\n*S KotlinDebug\n*F\n+ 1 Songs.kt\ngsg/dani/songs/Songs$onCreate$1\n*L\n59#1:199\n59#1,22:200\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
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

    iput-object p1, p0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 57
    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x6

    move/from16 v3, p2

    if-ne v3, v2, :cond_a

    .line 59
    iget-object v2, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs;->getSearchBYnumber()Landroid/widget/EditText;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "$this$trim$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, "$i$f$trim":I
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 200
    .local v6, "$i$f$trim":I
    const/4 v7, 0x0

    .line 201
    .local v7, "startIndex$iv$iv":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 202
    .local v8, "endIndex$iv$iv":I
    const/4 v10, 0x0

    .line 204
    .local v10, "startFound$iv$iv":Z
    :goto_0
    if-gt v7, v8, :cond_6

    .line 205
    if-nez v10, :cond_1

    move v11, v7

    goto :goto_1

    :cond_1
    move v11, v8

    .line 206
    .local v11, "index$iv$iv":I
    :goto_1
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .local v12, "it":C
    const/4 v13, 0x0

    .line 59
    .local v13, "$i$a$-trim-Songs$onCreate$1$Search_String$1":I
    const/16 v14, 0x20

    if-gt v12, v14, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 208
    .end local v13    # "$i$a$-trim-Songs$onCreate$1$Search_String$1":I
    .local v12, "match$iv$iv":Z
    :goto_2
    if-nez v10, :cond_4

    .line 209
    if-nez v12, :cond_3

    .line 210
    const/4 v10, 0x1

    goto :goto_3

    .line 212
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 214
    :cond_4
    if-nez v12, :cond_5

    .line 215
    goto :goto_4

    .line 217
    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 218
    .end local v11    # "index$iv$iv":I
    .end local v12    # "match$iv$iv":Z
    :goto_3
    nop

    .line 204
    goto :goto_0

    .line 221
    :cond_6
    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-interface {v5, v7, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 199
    .end local v5    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v6    # "$i$f$trim":I
    .end local v7    # "startIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v10    # "startFound$iv$iv":Z
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .end local v2    # "$this$trim$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trim":I
    nop

    .line 62
    .local v2, "Search_String":Ljava/lang/String;
    const-string v4, ""

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 63
    iget-object v4, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v4}, Lgsg/dani/songs/Songs;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Please Enter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v6}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " below Number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 65
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 66
    .local v4, "number":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v6}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_9

    .line 68
    sget-object v5, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    const-string v6, "number"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lgsg/dani/songs/Songs$Companion;->setSONGNUMBER(I)V

    .line 69
    iget-object v5, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-static {v5}, Lgsg/dani/songs/Songs;->access$dbQuery(Lgsg/dani/songs/Songs;)V

    .line 70
    iget-object v5, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v5}, Lgsg/dani/songs/Songs;->getSearchBYnumber()Landroid/widget/EditText;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    goto :goto_5

    .line 72
    :cond_9
    iget-object v5, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v5}, Lgsg/dani/songs/Songs;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lgsg/dani/songs/Songs$onCreate$1;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v7}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Last Song "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 73
    .end local v2    # "Search_String":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/Integer;
    :cond_a
    :goto_5
    nop

    .line 74
    nop

    .line 76
    return v1
.end method
