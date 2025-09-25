.class public final Lgsg/dani/songs/Index$numberSearch$1;
.super Ljava/lang/Object;
.source "Index.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsg/dani/songs/Index;->numberSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Index.kt\ngsg/dani/songs/Index$numberSearch$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,217:1\n45#2:218\n17#2,22:219\n*E\n*S KotlinDebug\n*F\n+ 1 Index.kt\ngsg/dani/songs/Index$numberSearch$1\n*L\n146#1:218\n146#1,22:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "gsg/dani/songs/Index$numberSearch$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic this$0:Lgsg/dani/songs/Index;


# direct methods
.method constructor <init>(Lgsg/dani/songs/Index;)V
    .locals 0
    .param p1, "$outer"    # Lgsg/dani/songs/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lgsg/dani/songs/Index$numberSearch$1;->this$0:Lgsg/dani/songs/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 16
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    move-object/from16 v0, p0

    const-string v1, "s"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v1, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    const-string v3, "Number"

    invoke-virtual {v1, v3}, Lgsg/dani/songs/Index$Companion;->setColumn_Name(Ljava/lang/String;)V

    .line 146
    sget-object v1, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lgsg/dani/songs/Index$numberSearch$1;->this$0:Lgsg/dani/songs/Index;

    sget v5, Lgsg/dani/songs/R$id;->SearchBYnumber:I

    invoke-virtual {v4, v5}, Lgsg/dani/songs/Index;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v5, "SearchBYnumber"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "$this$trim$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 218
    .local v5, "$i$f$trim":I
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 219
    .local v7, "$i$f$trim":I
    const/4 v8, 0x0

    .line 220
    .local v8, "startIndex$iv$iv":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 221
    .local v9, "endIndex$iv$iv":I
    const/4 v11, 0x0

    .line 223
    .local v11, "startFound$iv$iv":Z
    :goto_0
    if-gt v8, v9, :cond_5

    .line 224
    if-nez v11, :cond_0

    move v12, v8

    goto :goto_1

    :cond_0
    move v12, v9

    .line 225
    .local v12, "index$iv$iv":I
    :goto_1
    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .local v13, "it":C
    const/4 v14, 0x0

    .line 146
    .local v14, "$i$a$-trim-Index$numberSearch$1$onTextChanged$1":I
    const/16 v15, 0x20

    if-gt v13, v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .end local v13    # "it":C
    .end local v14    # "$i$a$-trim-Index$numberSearch$1$onTextChanged$1":I
    :goto_2
    move v13, v15

    .line 227
    .local v13, "match$iv$iv":Z
    if-nez v11, :cond_3

    .line 228
    if-nez v13, :cond_2

    .line 229
    const/4 v11, 0x1

    goto :goto_3

    .line 231
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 233
    :cond_3
    if-nez v13, :cond_4

    .line 234
    goto :goto_4

    .line 236
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 237
    .end local v12    # "index$iv$iv":I
    .end local v13    # "match$iv$iv":Z
    :goto_3
    nop

    .line 223
    goto :goto_0

    .line 240
    :cond_5
    :goto_4
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v6, v8, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 218
    .end local v6    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$trim":I
    .end local v8    # "startIndex$iv$iv":I
    .end local v9    # "endIndex$iv$iv":I
    .end local v11    # "startFound$iv$iv":Z
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$this$trim$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trim":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgsg/dani/songs/Index$Companion;->setSearch_String(Ljava/lang/String;)V

    .line 148
    iget-object v1, v0, Lgsg/dani/songs/Index$numberSearch$1;->this$0:Lgsg/dani/songs/Index;

    invoke-virtual {v1}, Lgsg/dani/songs/Index;->getListarray$app_debug()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v1, v0, Lgsg/dani/songs/Index$numberSearch$1;->this$0:Lgsg/dani/songs/Index;

    invoke-static {v1}, Lgsg/dani/songs/Index;->access$dbQuery(Lgsg/dani/songs/Index;)V

    .line 152
    return-void
.end method
