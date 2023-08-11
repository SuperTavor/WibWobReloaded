.class public Lcom/hangame/hsp/payment/core/db/PaymentDBManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentDBManager"

.field private static mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createDBHelper(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteAllClientStatus(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteAllClientStatusByTableName(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized deleteAllClientStatusByTableName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-gtz v1, :cond_0

    :try_start_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_0
    :try_start_2
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "PaymentDBManager"

    const-string v5, "PaymentDB - deleteClientStatus exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized deleteAllRetryTarget(Landroid/content/Context;)Z
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteAllClientStatusByTableName(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deleteClientStatus(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 3

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized deleteClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "tx_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "= \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_0

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "status"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "= \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, p4, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-gtz v1, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_1
    :try_start_2
    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PaymentDB - deleteClientStatus - txId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "PaymentDBManager"

    const-string v5, "deleteClientStatus exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 3

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized insertClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->insertClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized insertClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v2, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "client_tx_no"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "event_no"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getEventNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tx_id"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "request_time"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getRequestTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "current_time "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "member_no"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "game_no"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getGameNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "product_id"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "store_id"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStoreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "detail"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "receipt"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "retry"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getRetry()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "op"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getPhoneOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reserved"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v1, p2, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    :try_start_2
    invoke-static {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_0
    :try_start_3
    const-string v2, "PaymentDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PaymentDB - insertClientStatus - txId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_5
    const-string v1, "PaymentDBManager"

    const-string v2, "PaymentDB - insertClientStatus already exists"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_3
    :try_start_7
    const-string v4, "PaymentDBManager"

    const-string v5, "insertClientStatus exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static declared-synchronized insertRetryTarget(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    .locals 4

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, v2, v3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->insertClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized selectClientStatus(Landroid/content/Context;J)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    .locals 3

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, p2, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized selectClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    .locals 33

    const-class v25, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v25

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v2, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "tx_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v23

    if-eqz v23, :cond_0

    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "PaymentDBManager"

    const-string v4, "Not exists any data."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v3, v24

    :goto_0
    if-eqz v23, :cond_1

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    :goto_1
    monitor-exit v25

    return-object v2

    :cond_2
    :try_start_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x9

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v3, 0xa

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v3, 0xb

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v3, 0xc

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v3, 0xd

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v3, 0xe

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v3, 0xf

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v4, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v19, "PaymentAndroidClient"

    const-string v22, ""

    invoke-direct/range {v4 .. v22}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setPhoneOperator(Ljava/lang/String;)V

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    invoke-direct/range {v3 .. v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReserved(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v5, v23

    move-object/from16 v31, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v31

    :goto_2
    :try_start_6
    const-string v6, "PaymentDBManager"

    const-string v7, "selectClientStatus exception"

    invoke-static {v6, v7, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v5, :cond_3

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {v4}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v25

    throw v2

    :catchall_1
    move-exception v2

    move-object/from16 v23, v10

    :goto_3
    if-eqz v23, :cond_4

    :try_start_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v3

    move-object/from16 v23, v10

    move-object/from16 v31, v2

    move-object v2, v3

    move-object/from16 v3, v31

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v3, v4

    move-object/from16 v23, v5

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v5, v10

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v5, v10

    move-object/from16 v2, v24

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    goto :goto_2
.end method

.method private static declared-synchronized selectClientStatusByTableNameForAmazon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    .locals 35

    const-class v26, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v26

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v2, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "reserved"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v23

    if-eqz v23, :cond_0

    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    const-string v3, "PaymentDBManager"

    const-string v4, "Not exists any data."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v24, v11

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    const-string v3, "PaymentDBManager"

    const-string v4, "Not exists any data."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v3, v24

    :goto_0
    if-eqz v23, :cond_3

    :try_start_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v3

    :goto_1
    monitor-exit v26

    return-object v2

    :cond_4
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v28

    const-string v3, "PaymentDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v3, 0x0

    move/from16 v25, v3

    move-object/from16 v24, v11

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x9

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v3, 0xa

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v3, 0xb

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v3, 0xc

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v3, 0xd

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v3, 0xe

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v3, 0xf

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    new-instance v4, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v19, "PaymentAndroidClient"

    const-string v22, ""

    invoke-direct/range {v4 .. v22}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setPhoneOperator(Ljava/lang/String;)V

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move/from16 v8, v32

    invoke-direct/range {v3 .. v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReserved(Ljava/lang/String;)V

    const-string v4, "PaymentDBManager"

    const-string v5, "============================ : "

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clientStatusData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    move-object/from16 v24, v3

    goto/16 :goto_2

    :cond_5
    :try_start_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v3, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x9

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v3, 0xa

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v3, 0xb

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v3, 0xc

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v3, 0xd

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v3, 0xe

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v3, 0xf

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v4, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v19, "PaymentAndroidClient"

    const-string v22, ""

    invoke-direct/range {v4 .. v22}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setPhoneOperator(Ljava/lang/String;)V

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    invoke-direct/range {v3 .. v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReserved(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v5, v23

    move-object/from16 v34, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v34

    :goto_3
    :try_start_a
    const-string v6, "PaymentDBManager"

    const-string v7, "selectClientStatus exception"

    invoke-static {v6, v7, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v5, :cond_6

    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v4}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v26

    throw v2

    :catchall_1
    move-exception v2

    move-object/from16 v23, v10

    :goto_4
    if-eqz v23, :cond_7

    :try_start_c
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_2
    move-exception v3

    move-object/from16 v23, v10

    move-object/from16 v34, v2

    move-object v2, v3

    move-object/from16 v3, v34

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object/from16 v34, v3

    move-object v3, v2

    move-object/from16 v2, v34

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v3, v4

    move-object/from16 v23, v5

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v5, v10

    move-object v3, v2

    move-object v2, v11

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v2

    move-object v5, v10

    move-object v2, v11

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object/from16 v5, v23

    move-object v2, v11

    goto :goto_3

    :catch_4
    move-exception v4

    move-object/from16 v5, v23

    move-object/from16 v34, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v34

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v4, v2

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    goto :goto_3
.end method

.method public static declared-synchronized selectClientStatusForAmazon(Landroid/content/Context;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusByTableNameForAmazon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized selectClientStatusList(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusListByTableName(Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized selectClientStatusListByTableName(Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 35

    const-class v31, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v31

    const/4 v10, 0x0

    :try_start_0
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v2, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    const-string v3, "member_no"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, " AND "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v3, v0

    if-lez v3, :cond_1

    const-string v3, "status"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v3, v5, :cond_1

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "PaymentDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectClientStatusList Condition : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    if-eqz v9, :cond_3

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    const-string v3, "PaymentDBManager"

    const-string v4, "Not exists any data."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v9, :cond_5

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v2, v29

    :goto_1
    monitor-exit v31

    return-object v2

    :cond_6
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v32

    const-string v3, "PaymentDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move/from16 v30, v3

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v3, 0x8

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v3, 0x9

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v3, 0xa

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v3, 0xb

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xc

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0xd

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xe

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v3, 0xf

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    new-instance v4, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v25, "PaymentAndroidClient"

    const-string v28, ""

    move-object v10, v4

    invoke-direct/range {v10 .. v28}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setPhoneOperator(Ljava/lang/String;)V

    new-instance v3, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct/range {v3 .. v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReserved(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v3, v30, 0x1

    move/from16 v30, v3

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object v4, v10

    :goto_3
    :try_start_6
    const-string v5, "PaymentDBManager"

    const-string v6, "selectClientStatusList exception"

    invoke-static {v5, v6, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_7

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v2, v29

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v31

    throw v2

    :catchall_2
    move-exception v3

    move-object/from16 v34, v3

    move-object v3, v2

    move-object/from16 v2, v34

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object v10, v9

    move-object/from16 v34, v2

    move-object v2, v3

    move-object/from16 v3, v34

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v10, v4

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v4, v10

    move-object/from16 v34, v2

    move-object v2, v3

    move-object/from16 v3, v34

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v9

    move-object/from16 v34, v2

    move-object v2, v3

    move-object/from16 v3, v34

    goto :goto_3
.end method

.method public static declared-synchronized selectRetryTargetList(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status_retry_target"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusListByTableName(Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    .locals 2

    const-class v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "tbl_client_status"

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateClientStatusByClientTxNo(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "tx_id"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "status"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "detail"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "receipt"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "current_time "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "reserved"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "client_tx_no"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "member_no"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, "tbl_client_status"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-gtz v1, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_1
    :try_start_2
    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PaymentDB - updateClientStatus - clientTxNo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", detail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", receipt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reserved:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "PaymentDBManager"

    const-string v5, "PaymentDB - updateClientStatus exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static declared-synchronized updateClientStatusByTableName(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "detail"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "receipt"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "detail"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "current_time "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "reserved"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "tx_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "member_no"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-gtz v1, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_1
    :try_start_2
    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PaymentDB - updateClientStatus - txId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", detail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", receipt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", reserved:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "PaymentDBManager"

    const-string v5, "PaymentDB - updateClientStatus exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static declared-synchronized updateClientStatusRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z
    .locals 9

    const-class v8, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v8

    :try_start_0
    const-string v7, "tbl_client_status"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusRetryCountByTableName(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static declared-synchronized updateClientStatusRetryCountByTableName(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-class v3, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatusByTableName(Landroid/content/Context;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "PaymentDBManager"

    const-string v5, "Not found clientStatusData"

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return v0

    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->createDBHelper(Landroid/content/Context;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->mDBHelper:Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "retry"

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getRetry()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "current_time "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "tx_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "member_no"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_1

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p6, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-gtz v1, :cond_2

    :try_start_3
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_4
    const-string v4, "PaymentDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PaymentDB - updateClientStatus - txId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    const-string v4, "PaymentDBManager"

    const-string v5, "PaymentDB - updateClientStatusRetryCount exception"

    invoke-static {v4, v5, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static declared-synchronized updateRetryTargetRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z
    .locals 9

    const-class v8, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;

    monitor-enter v8

    :try_start_0
    const-string v7, "tbl_client_status_retry_target"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusRetryCountByTableName(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method
