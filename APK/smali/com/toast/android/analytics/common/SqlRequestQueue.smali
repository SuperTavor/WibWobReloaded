.class public Lcom/toast/android/analytics/common/SqlRequestQueue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/interfaces/IRequestQueue;


# static fields
.field static final TAG:Ljava/lang/String; = "SqlRequestQueue"

.field static _sApplicationContext:Landroid/content/Context;

.field static _sInitialized:Z

.field static _sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

.field static _sLock:Ljava/lang/Object;


# instance fields
.field mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

    sput-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sApplicationContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    new-instance v0, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    sget-object v1, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    sput-object v2, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/common/SqlRequestQueue;
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApplicationContext in the SQLRequestQueue is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

    if-nez v0, :cond_1

    new-instance v0, Lcom/toast/android/analytics/common/SqlRequestQueue;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/SqlRequestQueue;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

    :cond_1
    sget-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInitialized:Z

    sput-object p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sApplicationContext:Landroid/content/Context;

    new-instance v0, Lcom/toast/android/analytics/common/SqlRequestQueue;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/SqlRequestQueue;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sInstance:Lcom/toast/android/analytics/common/SqlRequestQueue;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/toast/android/analytics/model/RequestData;)V
    .locals 2

    sget-object v1, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->addLog(Lcom/toast/android/analytics/model/RequestData;)V

    sget-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic addRequest(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/common/SqlRequestQueue;->addRequest(Lcom/toast/android/analytics/model/RequestData;)V

    return-void
.end method

.method public deleteRequest(Lcom/toast/android/analytics/model/RequestData;)Z
    .locals 3

    sget-object v1, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getLogCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->deleteLog(Lcom/toast/android/analytics/model/RequestData;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v2, "SqlRequestQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic deleteRequest(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/common/SqlRequestQueue;->deleteRequest(Lcom/toast/android/analytics/model/RequestData;)Z

    move-result v0

    return v0
.end method

.method public getFirstRequest()Lcom/toast/android/analytics/model/RequestData;
    .locals 3

    sget-object v1, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getLogCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getFirstLog()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v2, "SqlRequestQueue"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic getFirstRequest()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getFirstRequest()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    sget-object v1, Lcom/toast/android/analytics/common/SqlRequestQueue;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/SqlRequestQueue;->mAnalyticsSQLHelper:Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;

    invoke-virtual {v0}, Lcom/toast/android/analytics/model/dao/AnalyticsSQLHelper;->getLogCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
