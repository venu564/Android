.class final Lgsg/dani/songs/Songs$onCreate$2;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSongs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Songs.kt\ngsg/dani/songs/Songs$onCreate$2\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,198:1\n45#2:199\n17#2,22:200\n*E\n*S KotlinDebug\n*F\n+ 1 Songs.kt\ngsg/dani/songs/Songs$onCreate$2\n*L\n81#1:199\n81#1,22:200\n*E\n"
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

    iput-object p1, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "it"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v0}, Lgsg/dani/songs/Songs;->getSearchBYnumber()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "$this$trim$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$trim":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$trim":I
    const/4 v4, 0x0

    .line 201
    .local v4, "startIndex$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 202
    .local v5, "endIndex$iv$iv":I
    const/4 v7, 0x0

    .line 204
    .local v7, "startFound$iv$iv":Z
    :goto_0
    const/4 v8, 0x0

    if-gt v4, v5, :cond_6

    .line 205
    if-nez v7, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    .line 206
    .local v9, "index$iv$iv":I
    :goto_1
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "it":C
    const/4 v11, 0x0

    .line 81
    .local v11, "$i$a$-trim-Songs$onCreate$2$Search_String$1":I
    const/16 v12, 0x20

    if-gt v10, v12, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 208
    .end local v11    # "$i$a$-trim-Songs$onCreate$2$Search_String$1":I
    .local v10, "match$iv$iv":Z
    :goto_2
    if-nez v7, :cond_4

    .line 209
    if-nez v10, :cond_3

    .line 210
    const/4 v7, 0x1

    goto :goto_3

    .line 212
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 214
    :cond_4
    if-nez v10, :cond_5

    .line 215
    goto :goto_4

    .line 217
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 218
    .end local v9    # "index$iv$iv":I
    .end local v10    # "match$iv$iv":Z
    :goto_3
    nop

    .line 204
    goto :goto_0

    .line 221
    :cond_6
    :goto_4
    add-int/lit8 v9, v5, 0x1

    invoke-interface {v2, v4, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 199
    .end local v2    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$trim":I
    .end local v4    # "startIndex$iv$iv":I
    .end local v5    # "endIndex$iv$iv":I
    .end local v7    # "startFound$iv$iv":Z
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .end local v0    # "$this$trim$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trim":I
    nop

    .line 84
    .local v0, "Search_String":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    iget-object v1, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v1}, Lgsg/dani/songs/Songs;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Please Enter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v3}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " below Number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 87
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    .local v1, "number":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v3}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gtz v2, :cond_a

    .line 90
    sget-object v2, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    const-string v3, "number"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lgsg/dani/songs/Songs$Companion;->setSONGNUMBER(I)V

    .line 91
    iget-object v2, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-static {v2}, Lgsg/dani/songs/Songs;->access$dbQuery(Lgsg/dani/songs/Songs;)V

    .line 92
    iget-object v2, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs;->getSearchBYnumber()Landroid/widget/EditText;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 94
    iget-object v2, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_b

    .line 96
    iget-object v3, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lgsg/dani/songs/Songs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 97
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_5

    .line 96
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .end local v2    # "view":Landroid/view/View;
    :cond_a
    iget-object v2, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgsg/dani/songs/Songs$onCreate$2;->this$0:Lgsg/dani/songs/Songs;

    invoke-virtual {v4}, Lgsg/dani/songs/Songs;->getTOTALNUMBERS()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Last Song "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 103
    .end local v0    # "Search_String":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/Integer;
    :cond_b
    :goto_5
    nop

    .line 104
    nop

    .line 105
    return-void
.end method
