.class public Lgsg/dani/songs/db/DBinRAW;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBinRAW.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = null

.field private static DB_PATH:Ljava/lang/String; = null

.field private static final SONGSTABLE:Ljava/lang/String; = "Table_indexx"


# instance fields
.field private final myContext:Landroid/content/Context;

.field private myDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "/data/data/gsg.dani.songs/databases/"

    sput-object v0, Lgsg/dani/songs/db/DBinRAW;->DB_PATH:Ljava/lang/String;

    .line 32
    const-string v0, "gsgsongs.db"

    sput-object v0, Lgsg/dani/songs/db/DBinRAW;->DB_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lgsg/dani/songs/db/DBinRAW;->DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    iput-object p1, p0, Lgsg/dani/songs/db/DBinRAW;->myContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private copyDataBase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lgsg/dani/songs/db/DBinRAW;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    .local v0, "myInput":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgsg/dani/songs/db/DBinRAW;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgsg/dani/songs/db/DBinRAW;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "outFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "myOutput":Ljava/io/OutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 75
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "length":I
    if-lez v4, :cond_0

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 80
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    return-void
.end method


# virtual methods
.method public checkDataBase(Landroid/content/Context;)Z
    .locals 2
    .param p1, "myContext"    # Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lgsg/dani/songs/db/DBinRAW;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgsg/dani/songs/db/DBinRAW;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lgsg/dani/songs/db/DBinRAW;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lgsg/dani/songs/db/DBinRAW;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    .end local p0    # "this":Lgsg/dani/songs/db/DBinRAW;
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDataBase(Landroid/content/Context;)V
    .locals 4
    .param p1, "myContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lgsg/dani/songs/db/DBinRAW;->checkDataBase(Landroid/content/Context;)Z

    move-result v0

    .line 46
    .local v0, "dbExist":Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lgsg/dani/songs/db/DBinRAW;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    invoke-virtual {p0}, Lgsg/dani/songs/db/DBinRAW;->close()V

    .line 53
    :try_start_0
    invoke-direct {p0}, Lgsg/dani/songs/db/DBinRAW;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "______Error copying database"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteHOSPIATL(Lgsg/dani/songs/db/StringsDetails;)V
    .locals 3
    .param p1, "contact"    # Lgsg/dani/songs/db/StringsDetails;

    .line 189
    invoke-virtual {p0}, Lgsg/dani/songs/db/DBinRAW;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 190
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    const-string v2, "Table_indexx"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    return-void
.end method

.method public getIndexTable()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgsg/dani/songs/db/StringsDetails;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Lgsg/dani/songs/db/StringsDetails;>;"
    sget-object v1, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v1}, Lgsg/dani/songs/Index$Companion;->getBOOKNAME()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v2}, Lgsg/dani/songs/Index$Companion;->getTOTALNUMBERS()I

    move-result v2

    .line 118
    .local v2, "num":I
    sget-object v3, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v3}, Lgsg/dani/songs/Index$Companion;->getSearch_String()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "Search_string":Ljava/lang/String;
    sget-object v4, Lgsg/dani/songs/Index;->Companion:Lgsg/dani/songs/Index$Companion;

    invoke-virtual {v4}, Lgsg/dani/songs/Index$Companion;->getColumn_Name()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "Column_Name":Ljava/lang/String;
    const-string v5, ""

    .line 127
    .local v5, "selectQuery":Ljava/lang/String;
    const-string v6, "Tel_Song_Name"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\'"

    const-string v8, "\'%"

    const-string v9, " like "

    const-string v10, " from SongBook where "

    const-string v11, "select Number,"

    if-eqz v6, :cond_0

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 130
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by Number limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    :goto_0
    const-string v6, "___DB QUERY"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lgsg/dani/songs/db/DBinRAW;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 136
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    :cond_1
    new-instance v8, Lgsg/dani/songs/db/StringsDetails;

    invoke-direct {v8}, Lgsg/dani/songs/db/StringsDetails;-><init>()V

    .line 141
    .local v8, "contact":Lgsg/dani/songs/db/StringsDetails;
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lgsg/dani/songs/db/StringsDetails;->setId(I)V

    .line 142
    const/4 v9, 0x1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgsg/dani/songs/db/StringsDetails;->setSongName(Ljava/lang/String;)V

    .line 144
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v8    # "contact":Lgsg/dani/songs/db/StringsDetails;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 151
    return-object v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgsg/dani/songs/db/StringsDetails;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Lgsg/dani/songs/db/StringsDetails;>;"
    sget-object v1, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    invoke-virtual {v1}, Lgsg/dani/songs/Songs$Companion;->getSONGNUMBER()I

    move-result v1

    .line 159
    .local v1, "num":I
    sget-object v2, Lgsg/dani/songs/Songs;->Companion:Lgsg/dani/songs/Songs$Companion;

    invoke-virtual {v2}, Lgsg/dani/songs/Songs$Companion;->getBOOKNAME()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select Number,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from SongBook where Number like "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "selectQuery":Ljava/lang/String;
    const-string v4, "DB QUERY"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lgsg/dani/songs/db/DBinRAW;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 166
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 168
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    :cond_0
    new-instance v6, Lgsg/dani/songs/db/StringsDetails;

    invoke-direct {v6}, Lgsg/dani/songs/db/StringsDetails;-><init>()V

    .line 171
    .local v6, "contact":Lgsg/dani/songs/db/StringsDetails;
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lgsg/dani/songs/db/StringsDetails;->setId(I)V

    .line 172
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgsg/dani/songs/db/StringsDetails;->setSongName(Ljava/lang/String;)V

    .line 174
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v6    # "contact":Lgsg/dani/songs/db/StringsDetails;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 109
    return-void
.end method

.method public openDataBase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lgsg/dani/songs/db/DBinRAW;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgsg/dani/songs/db/DBinRAW;->DB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "myPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lgsg/dani/songs/db/DBinRAW;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1
.end method
