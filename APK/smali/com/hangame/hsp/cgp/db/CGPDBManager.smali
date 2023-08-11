.class public Lcom/hangame/hsp/cgp/db/CGPDBManager;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/hangame/hsp/cgp/db/CGPDBManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cgpDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->instance:Lcom/hangame/hsp/cgp/db/CGPDBManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CGPDBManager"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;
    .locals 2

    const-class v1, Lcom/hangame/hsp/cgp/db/CGPDBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->instance:Lcom/hangame/hsp/cgp/db/CGPDBManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/cgp/db/CGPDBManager;

    invoke-direct {v0}, Lcom/hangame/hsp/cgp/db/CGPDBManager;-><init>()V

    sput-object v0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->instance:Lcom/hangame/hsp/cgp/db/CGPDBManager;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->instance:Lcom/hangame/hsp/cgp/db/CGPDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDB()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "promo_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "promotion_record"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fail to delete data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Database Error : delete"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    const-string v1, "CGPDBManager"

    const-string v2, "Data Deleted."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized deleteAll(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "promotion_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "CGPDBManager"

    const-string v2, "All Data Deleted."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Database Error : delete"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized deleteOldData(Landroid/content/Context;[Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->selectCount(Landroid/content/Context;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-ge v2, p3, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    :try_start_3
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "status"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " IN (?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, p2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    const-string v1, ",?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "promotion_record"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "CGPDBManager"

    const-string v2, "Data Deleted."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Database Error : deleteOldData"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized initDataBase(Landroid/content/Context;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/cgp/db/CGPDBHelper;

    const-string v1, "cgp.db"

    const-string v2, "promotion_record"

    const/4 v3, 0x7

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/hangame/hsp/cgp/db/CGPDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/db/CGPDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    const-string v0, "CGPDBManager"

    const-string v1, "DB Opened."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/db/CGPDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CGPDBManager"

    const-string v2, "initDataBase Exception."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Landroid/content/Context;Lcom/hangame/hsp/cgp/db/CGPDBObject;)Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "promo_id"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "member_no"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getMemberNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CGPDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memberNo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getMemberNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "status"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "reg_date"

    invoke-static {}, Lcom/hangame/hsp/util/CalendarUtil;->getCurrentDateTimeString14()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "promotion_record"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fail to insert data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Database Error : insert"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    const-string v1, "CGPDBManager"

    const-string v2, "Data Inserted."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized selectAll(Landroid/content/Context;)Ljava/util/List;
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    move-object v0, v8

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x4

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "promo_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "member_no"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "status"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "reg_date"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "promotion_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "CGPDBManager"

    const-string v1, "Not exists matched data."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move-object v0, v9

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v0, "CGPDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v10

    :goto_1
    if-ge v0, v1, :cond_2

    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    const/4 v4, 0x1

    :try_start_7
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    invoke-direct {v6, v2, v4, v3, v5}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Cannot convert to numeric type."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database Error : select"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectCount(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v1

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v1, "status"

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " IN (?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_2

    const-string v4, ",?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "promotion_record"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CGPDBManager"

    const-string v2, "Not exists matched data."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v8

    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move v8, v0

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_6
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database Error : select"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v9, v1

    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public declared-synchronized selectData(Landroid/content/Context;[Ljava/lang/String;)Lcom/hangame/hsp/cgp/db/CGPDBObject;
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v0, v8

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x4

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "promo_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "member_no"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "status"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "reg_date"

    aput-object v1, v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_3

    array-length v0, p2

    if-ne v0, v4, :cond_3

    const-string v0, "promo_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "member_no"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "promotion_record"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CGPDBManager"

    const-string v1, "Not exists matched data."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    new-instance v0, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_4
    const-string v1, "CGPDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    const/4 v0, 0x1

    :try_start_6
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Cannot convert to numeric type."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database Error : select"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized update(Landroid/content/Context;Lcom/hangame/hsp/cgp/db/CGPDBObject;)Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->initDataBase(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "promo_id"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "status"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "reg_date"

    invoke-static {}, Lcom/hangame/hsp/util/CalendarUtil;->getCurrentDateTimeString14()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "promo_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "promotion_record"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fail to update data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Database Error : update"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    const-string v1, "CGPDBManager"

    const-string v2, "Data Updated."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBManager;->cgpDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0
.end method
