.class Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 2

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 240
    .local v0, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    monitor-exit p0

    return-object v0

    .line 235
    .end local v0    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .locals 4
    .param p1, "what"    # I

    monitor-enter p0

    .line 262
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v0, p1, :cond_0

    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 264
    .local v0, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 265
    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 266
    .end local v0    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_0

    .line 267
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 269
    .local v0, "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 270
    .local v1, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_1
    if-eqz v1, :cond_2

    .line 271
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 272
    .local v2, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget v3, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    .line 273
    iput-object v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 274
    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 276
    :cond_1
    move-object v0, v1

    .line 278
    :goto_2
    move-object v1, v2

    .line 279
    .end local v2    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_1

    .line 281
    .end local v0    # "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_2
    monitor-exit p0

    return-void

    .line 261
    .end local p1    # "what":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method declared-synchronized sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_0

    .line 251
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 255
    .local v0, "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v0, v1

    goto :goto_0

    .line 258
    :cond_1
    iput-object p1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 246
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    .end local p1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
