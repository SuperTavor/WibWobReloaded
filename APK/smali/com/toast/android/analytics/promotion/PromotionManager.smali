.class public Lcom/toast/android/analytics/promotion/PromotionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;
.implements Lcom/toast/android/analytics/promotion/interfaces/IPromotionManager;


# static fields
.field static final TAG:Ljava/lang/String; = "PromotionManager"

.field static _sContext:Landroid/content/Context;

.field static _sInstance:Lcom/toast/android/analytics/promotion/PromotionManager;


# instance fields
.field mPollingEnabled:Z

.field mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

.field mThreadCreationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/promotion/PromotionManager;->_sContext:Landroid/content/Context;

    new-instance v0, Lcom/toast/android/analytics/promotion/PromotionManager;

    invoke-direct {v0}, Lcom/toast/android/analytics/promotion/PromotionManager;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/PromotionManager;->_sInstance:Lcom/toast/android/analytics/promotion/PromotionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPollingEnabled:Z

    iput v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mThreadCreationCount:I

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/PromotionManager;->_sInstance:Lcom/toast/android/analytics/promotion/PromotionManager;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/promotion/PromotionManager;->_sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private makePromotionExecData(IZ)Lcom/toast/android/analytics/model/RequestData;
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getInstance()Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getTransactionId()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "transactionId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "header"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v4, "appId"

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loggingUserId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryCode"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    const-string v1, "aos"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v0, "promoId"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "campaignId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "PromotionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "campaignOrPromotionId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / isCampaignId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / txnId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "promoId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "campaignId"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PromotionManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private notifyCampaignExecution(Lcom/toast/android/analytics/model/RequestData;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/toast/android/analytics/promotion/PromotionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/toast/android/analytics/promotion/PromotionManager$1;-><init>(Lcom/toast/android/analytics/promotion/PromotionManager;Lcom/toast/android/analytics/model/RequestData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public completeScheduledJob(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-eqz v0, :cond_0

    const-string v0, "PromotionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeScheduledJob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hidePromotion(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->hidePromotion(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hidePromotion(Ljava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    move-result v0

    return v0
.end method

.method public isNetworkStable()Z
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->isNetworkStable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCampaignShowToServer(Lcom/toast/android/analytics/promotion/model/Promotion;)V
    .locals 2

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/toast/android/analytics/promotion/PromotionManager;->makePromotionExecData(IZ)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/model/RequestData;->setId(I)V

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->notifyCampaignExecution(Lcom/toast/android/analytics/model/RequestData;)V

    return-void
.end method

.method public notifyPushCampaignStart(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->makePromotionExecData(IZ)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/model/RequestData;->setId(I)V

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->notifyCampaignExecution(Lcom/toast/android/analytics/model/RequestData;)V

    return-void
.end method

.method public onDeviceIdCollect()V
    .locals 2

    const-string v0, "PromotionManager"

    const-string v1, "@onDeviceIdCollect()"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/PromotionManager;->start()V

    return-void
.end method

.method public setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V

    return-void
.end method

.method public showPromotion(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 2

    sget-object v0, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ANIMATION_NONE:Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/toast/android/analytics/promotion/PromotionManager;->showPromotion(Ljava/lang/String;Landroid/app/Activity;II)I

    move-result v0

    return v0
.end method

.method public showPromotion(Ljava/lang/String;Landroid/app/Activity;II)I
    .locals 7

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCanExecutePromotion()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PromotionManager"

    const-string v1, "[Warning] campaign is disabled by user"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7006

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForPromotion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "pexe"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PromotionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start push campaign : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->notifyPushCampaignStart(I)V

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "pexe"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->removeObjectForKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "cid_for_notify"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->removeObjectForKey(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-nez v0, :cond_2

    const-string v0, "PromotionManager"

    const-string v1, "Promotion Polling Thread Create & start.."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-direct {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-eqz v0, :cond_1

    const-string v0, "PromotionManager"

    const-string v1, "Promotion Polling Thread wakeup.."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->wakeup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->stop()V

    :cond_0
    return-void
.end method

.method public wakeupPollingThread()V
    .locals 2

    const-string v0, "PromotionManager"

    const-string v1, "wakeup promotion polling thread.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager;->mPromotionPollingThread:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->wakeup()V

    :cond_0
    return-void
.end method
