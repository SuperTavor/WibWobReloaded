.class public Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;
.super Lcom/toast/android/analytics/common/job/WorkerThread;


# static fields
.field private static final INTERVAL_PROMOTION_POLLING:I = 0x12c

.field public static final NAME:Ljava/lang/String; = "PromotionPollingThread"

.field private static final TAG:Ljava/lang/String; = "PromotionPollingThread"


# instance fields
.field volatile mNetowkrStable:Z

.field volatile mPollingCount:I

.field volatile mWakeup:Z

.field pollingInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;-><init>()V

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mNetowkrStable:Z

    iput v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mPollingCount:I

    const-string v0, "PromotionPollingThread"

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mName:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->setNetworkStable()V

    return-void
.end method

.method static synthetic access$100(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addPollingCount()V
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mPollingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mPollingCount:I

    return-void
.end method

.method private getPollingCount()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mPollingCount:I

    return v0
.end method

.method private makePromotionPollingData()Lcom/toast/android/analytics/model/RequestData;
    .locals 6

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getInstance()Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getTransactionId()J

    move-result-wide v4

    long-to-int v3, v4

    const-string v4, "transactionId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "header"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appId"

    const-string v3, "appId"

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    const-string v3, "appVersion"

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operatingSystem"

    const-string v2, "aos"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryCode"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "languageCode"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lastModifiedTime"

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loggingUserId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PromotionPollingThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====makePromotionPollingData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PromotionPollingThread"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private polling()V
    .locals 5

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->request()V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->addPollingCount()V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "PromotionPollingThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====polling interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private request()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->makePromotionPollingData()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v1

    const-string v2, "PromotionPollingThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=> request promotion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/toast/android/analytics/model/RequestData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, "promotionHost"

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PromotionPollingThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=> request promotion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v3, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;-><init>(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    new-instance v3, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;-><init>(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V

    new-instance v3, Lcom/toast/android/analytics/common/network/PromotionRequest;

    invoke-direct {v3, v1, v0}, Lcom/toast/android/analytics/common/network/PromotionRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    invoke-virtual {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    :cond_0
    return-void
.end method

.method private setNetworkStable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mNetowkrStable:Z

    return-void
.end method


# virtual methods
.method public cancelStop()V
    .locals 2

    const-string v0, "PromotionPollingThread"

    const-string v1, "Promotion Thread Termination Canceled..."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mTerminationReserved:Z

    return-void
.end method

.method protected close()V
    .locals 0

    invoke-super {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;->close()V

    return-void
.end method

.method public execute()V
    .locals 3

    const-string v0, "PromotionPollingThread"

    const-string v1, "PromotionPollingThread start"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->cleanupExpiredResource()V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->getPollingCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mTerminationReserved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PromotionPollingThread"

    const-string v1, "PromotionPollingThread execute post process"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->close()V

    const-string v0, "PromotionPollingThread"

    const-string v1, "PromotionPollingThread end"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->polling()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PromotionPollingThread"

    const-string v2, "PromotionPollingThread execute post process"

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->close()V

    throw v0
.end method

.method public isNetworkStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mNetowkrStable:Z

    return v0
.end method

.method public isPromotionCreated()Z
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getViewPropertyCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const-string v0, "PromotionPollingThread"

    const-string v1, "Promotion Thread Termination Reserved..."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mTerminationReserved:Z

    :cond_0
    return-void
.end method

.method public wakeup()V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, "PromotionPollingThread"

    const-string v1, "[WARNING] promotion polling thread is null"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    goto :goto_0
.end method
