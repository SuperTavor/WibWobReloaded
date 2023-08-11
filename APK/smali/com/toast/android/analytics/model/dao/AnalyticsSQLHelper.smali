.class public Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "ANALYTICS_LOG_DATA"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final EXPIRE_TIME:I = 0x18

.field private static final KEY_DATA:Ljava/lang/String; = "req_data"

.field private static final KEY_EXIPIRE_DATE:Ljava/lang/String; = "expire"

.field private static final KEY_ID:Ljava/lang/String; = "seq_id"

.field private static final MAX_LOG_SIZE:I = 0x64

.field private static final TABLE_LOGS:Ljava/lang/String; = "analytics_logs"

.field private static final TAG:Ljava/lang/String; = "AnalyticsSQLHelper"


# instance fields
.field mFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ANALYTICS_LOG_DATA"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->mFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public addLog(Lcom/toast/android/analytics/model/RequestData;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->mFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "req_data"

    invoke-virtual {p1}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "expire"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "analytics_logs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getLogCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getFirstLog()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->deleteLog(Lcom/toast/android/analytics/model/RequestData;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "AnalyticsSQLHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "AnalyticsSQLHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public deleteLog(Lcom/toast/android/analytics/model/RequestData;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "analytics_logs"

    const-string v5, "seq_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/toast/android/analytics/model/RequestData;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    :goto_0
    if-ltz v2, :cond_2

    :goto_1
    return v0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v5, "AnalyticsSQLHelper"

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v4

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string v5, "AnalyticsSQLHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public getFirstLog()Lcom/toast/android/analytics/model/RequestData;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "SELECT * FROM analytics_logs ORDER BY seq_id ASC LIMIT 1"

    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/toast/android/analytics/model/RequestData;

    invoke-direct {v0}, Lcom/toast/android/analytics/model/RequestData;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/model/RequestData;->setId(I)V

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/model/RequestData;->setJsonData(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x3

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->mFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ltz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->deleteLog(Lcom/toast/android/analytics/model/RequestData;)Z
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "AnalyticsSQLHelper"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_5
    const-string v3, "AnalyticsSQLHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_6
    const-string v3, "AnalyticsSQLHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public getLogCount()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT * FROM analytics_logs"

    invoke-virtual {p0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "AnalyticsSQLHelper"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-string v3, "AnalyticsSQLHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "AnalyticsSQLHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE analytics_logs ( seq_id INTEGER PRIMARY KEY AUTOINCREMENT,command TEXT, req_data TEXT, expire DATETIME)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "AnalyticsSQLHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, p3, :cond_0

    const-string v0, "DROP TABLE IF EXSITS analytics_logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
