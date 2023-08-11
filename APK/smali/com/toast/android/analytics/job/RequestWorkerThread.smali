.class public Lcom/toast/android/analytics/job/RequestWorkerThread;
.super Lcom/toast/android/analytics/common/job/WorkerThread;


# static fields
.field public static final NAME:Ljava/lang/String; = "RequestWorkerThread"

.field static final RETRY_INTERVAL:I = 0x2710

.field static final TAG:Ljava/lang/String; = "RequestWorkerThread"


# instance fields
.field volatile mIsProcessPostExecute:Z

.field volatile mIsWaitingForRequestResult:Z

.field volatile mRetryCount:I

.field volatile mShouldWaitForFail:Z

.field volatile mTerminateReserved:Z

.field mWaitingForRetryMilliSecond:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;-><init>()V

    const-string v0, "RequestWorkerThread"

    iput-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private isPromotionLog(Lcom/toast/android/analytics/model/RequestData;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "executionLog"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postExecute()V
    .locals 2

    const-string v0, "RequestWorkerThread"

    const-string v1, "RequestNewWorkerThread post execute()"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mTerminateReserved:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getInstance()Lcom/toast/android/analytics/common/SqlRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/SqlRequestQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->processData()V

    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsProcessPostExecute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->close()V

    throw v0
.end method

.method private processData()V
    .locals 4

    iget-object v1, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsWaitingForRequestResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mWaitingForRetryMilliSecond:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->requestData()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "RequestWorkerThread"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v2, "RequestWorkerThread"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private requestData()V
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getInstance()Lcom/toast/android/analytics/common/SqlRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getFirstRequest()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "serverHost"

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsWaitingForRequestResult:Z

    new-instance v2, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v3, Lcom/toast/android/analytics/job/RequestWorkerThread$1;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/job/RequestWorkerThread$1;-><init>(Lcom/toast/android/analytics/job/RequestWorkerThread;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    new-instance v3, Lcom/toast/android/analytics/job/RequestWorkerThread$2;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/job/RequestWorkerThread$2;-><init>(Lcom/toast/android/analytics/job/RequestWorkerThread;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V

    new-instance v3, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;

    invoke-direct {v3, v0, v1}, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    invoke-virtual {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    :cond_0
    return-void
.end method

.method private rollBackfromRetryingCondition()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    return-void
.end method


# virtual methods
.method public awake()V
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->rollBackfromRetryingCondition()V

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->processData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->postExecute()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->postExecute()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsProcessPostExecute:Z

    iput-boolean v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mTerminateReserved:Z

    invoke-super {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;->stop()V

    return-void
.end method
