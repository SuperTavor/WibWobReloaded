.class public final Lcom/toast/android/analytics/GameAnalytics;
.super Lcom/toast/android/analytics/common/Analytics;


# static fields
.field public static ANIMATION_FADE:I = 0x0

.field public static ANIMATION_NONE:I = 0x0

.field public static ANIMATION_SLIDE:I = 0x0

.field public static final DEVICE_INFO_CAMPAIGN_USERID:Ljava/lang/String; = "campaignUserId"

.field public static final DEVICE_INFO_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_INFO_TOKEN:Ljava/lang/String; = "token"

.field public static ITEM_TYPE_1:Ljava/lang/String; = null

.field public static ITEM_TYPE_2:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "GameAnalytics"

.field private static sLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/toast/android/analytics/GameAnalytics;->ANIMATION_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/toast/android/analytics/GameAnalytics;->ANIMATION_SLIDE:I

    const/4 v0, 0x2

    sput v0, Lcom/toast/android/analytics/GameAnalytics;->ANIMATION_FADE:I

    const-string v0, "0"

    sput-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_1:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_2:Ljava/lang/String;

    sput v1, Lcom/toast/android/analytics/GameAnalytics;->sLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/toast/android/analytics/common/Analytics;-><init>()V

    return-void
.end method

.method public static getCampaignInfos()Ljava/util/Map;
    .locals 6

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getViewProperties()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Lcom/toast/android/analytics/promotion/model/CampaignInfo;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-direct {v5, v1}, Lcom/toast/android/analytics/promotion/model/CampaignInfo;-><init>(Lcom/toast/android/analytics/promotion/model/Promotion;)V

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "campaignUserId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPromotionButtonImagePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getPromotionButtonImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideCampaign(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7007

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/promotion/PromotionManager;->hidePromotion(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static hideCampaign(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7007

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/toast/android/analytics/promotion/PromotionManager;->hidePromotion(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/toast/android/analytics/common/Analytics;->initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->initialize(Landroid/content/Context;)V

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getToastPromotionInfo(Z)V

    :cond_0
    return v0
.end method

.method public static isPromotionAvailable()Z
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getPromotionButtonImagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static launchPromotionPage(Landroid/app/Activity;)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->launchPromotionPage(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static setCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/promotion/PromotionManager;->setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V

    return-void
.end method

.method public static showCampaign(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7007

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/toast/android/analytics/promotion/PromotionManager;->showPromotion(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public static showCampaign(Ljava/lang/String;Landroid/app/Activity;II)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7007

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/toast/android/analytics/promotion/PromotionManager;->showPromotion(Ljava/lang/String;Landroid/app/Activity;II)I

    move-result v0

    goto :goto_0
.end method

.method public static traceEndSpeed(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->stopTimer(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const v0, 0x8005

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "v"

    invoke-static {v2}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ivn"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ldt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "e"

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "evt"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ev"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prm1"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prm2"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "val"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "lv"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceFacebookInstall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "tafb"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "GameAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook Deeplink Info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GameAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook Deeplink Toast Analytics Info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "FACEBOOK_DEEPLINK_INFO"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "GameAnalytics"

    const-string v3, "Send facebook deeplink info."

    invoke-static {v0, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GameAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTraceWithoutLoggingId()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTrace()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const-string v0, "GameAnalytics"

    const-string v2, "Can Send Facebook Deeplink Info"

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->sendFacebookDeeplinkInfo()V

    :cond_3
    :goto_1
    return v1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "GameAnalytics"

    const-string v2, "Cannot Send Facebook Deeplink Info"

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static traceFriendCount(I)I
    .locals 3

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "n"

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "friends"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method private static traceGoods(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)I
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "g"

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ucd"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ty"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "do"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "am"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lv"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceLevelUp(I)I
    .locals 3

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "l"

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lv"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceMoneyAcquisition(Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 6

    sget-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8002

    :goto_0
    return v0

    :cond_0
    const-string v4, "0"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/toast/android/analytics/GameAnalytics;->traceGoods(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static traceMoneyConsumption(Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 6

    sget-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/GameAnalytics;->ITEM_TYPE_2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8002

    :goto_0
    return v0

    :cond_0
    const-string v4, "1"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/toast/android/analytics/GameAnalytics;->traceGoods(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static tracePurchase(Ljava/lang/String;FFLjava/lang/String;I)I
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "p"

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "icd"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cost"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "curr"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pay"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "lv"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameAnalytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceStartSpeed(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->checkLoggingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->startTimer(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x8003

    goto :goto_0
.end method
