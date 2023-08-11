.class public Lcom/toast/android/analytics/unity/UnityActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method private static execCampaignRunnable(Lcom/toast/android/analytics/unity/CampaignRunnable;)I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/toast/android/analytics/unity/CampaignRunnable;->getResult()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static getCampaignInfos()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getCampaignInfos()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "\"%s\":%s,"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getPromotionButtonImagePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getPromotionButtonImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResultMessage(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->getResultMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideCampaign(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable;

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/unity/CampaignRunnable;-><init>(Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;)V

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAdspaceName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/toast/android/analytics/unity/UnityActivity;->execCampaignRunnable(Lcom/toast/android/analytics/unity/CampaignRunnable;)I

    move-result v0

    return v0
.end method

.method public static hideCampaign(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable;

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/unity/CampaignRunnable;-><init>(Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;)V

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAdspaceName(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAnimation(II)V

    invoke-static {v0}, Lcom/toast/android/analytics/unity/UnityActivity;->execCampaignRunnable(Lcom/toast/android/analytics/unity/CampaignRunnable;)I

    move-result v0

    return v0
.end method

.method public static initializeSdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/toast/android/analytics/GameAnalytics;->initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static isPromotionAvailable()Z
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->isPromotionAvailable()Z

    move-result v0

    return v0
.end method

.method public static launchPromotionPage()I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->launchPromotionPage(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static setCampaignListener(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/unity/UnityActivity$1;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/unity/UnityActivity$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->setCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->setDebugMode(Z)V

    return-void
.end method

.method public static setGcmSenderId(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->setGcmSenderId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setUserId(Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p0, p1}, Lcom/toast/android/analytics/GameAnalytics;->setUserId(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static showCampaign(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable;

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/unity/CampaignRunnable;-><init>(Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;)V

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAdspaceName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/toast/android/analytics/unity/UnityActivity;->execCampaignRunnable(Lcom/toast/android/analytics/unity/CampaignRunnable;)I

    move-result v0

    return v0
.end method

.method public static showCampaign(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable;

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/unity/CampaignRunnable;-><init>(Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;)V

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAdspaceName(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/toast/android/analytics/unity/CampaignRunnable;->setAnimation(II)V

    invoke-static {v0}, Lcom/toast/android/analytics/unity/UnityActivity;->execCampaignRunnable(Lcom/toast/android/analytics/unity/CampaignRunnable;)I

    move-result v0

    return v0
.end method

.method public static traceActivation()I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceActivation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static traceDeactivation()I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceDeactivation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static traceEndSpeed(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceEndSpeed(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static traceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 2

    invoke-static/range {p0 .. p6}, Lcom/toast/android/analytics/GameAnalytics;->traceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v0

    return v0
.end method

.method public static traceFacebookInstall(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/toast/android/analytics/GameAnalytics;->traceFacebookInstall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static traceFriendCount(I)I
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceFriendCount(I)I

    move-result v0

    return v0
.end method

.method public static traceLevelUp(I)I
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceLevelUp(I)I

    move-result v0

    return v0
.end method

.method public static traceMoneyAcquisition(Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/toast/android/analytics/GameAnalytics;->traceMoneyAcquisition(Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v0

    return v0
.end method

.method public static traceMoneyConsumption(Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/toast/android/analytics/GameAnalytics;->traceMoneyConsumption(Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v0

    return v0
.end method

.method public static tracePurchase(Ljava/lang/String;FFLjava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/toast/android/analytics/GameAnalytics;->tracePurchase(Ljava/lang/String;FFLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static traceStartSpeed(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceStartSpeed(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
