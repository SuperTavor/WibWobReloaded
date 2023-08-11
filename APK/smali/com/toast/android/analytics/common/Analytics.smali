.class public Lcom/toast/android/analytics/common/Analytics;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_TIME_LAPSE_FROM_ACTIVATE_TO_DEACTIVATE:Ljava/lang/String; = "DEFAULT_TIME_LAPSE_FROM_ACTIVATE_TO_DEACTIVATE"

.field static final DEFAULT_TIME_LAPSE_FROM_START_TO_FINISH:Ljava/lang/String; = "DEFAULT_TIME_LAPSE_FROM_START_TO_FINISH"

.field public static final E_ACTIVITY_EMPTY:I = 0x800a

.field public static final E_ALREADY_EXISTS:I = 0x8003

.field public static final E_APP_ID_IS_EMPTY:I = 0x8006

.field public static final E_APP_VERSION_IS_EMPTY:I = 0x8008

.field public static final E_CAMPAIGN_DISABLED:I = 0x7006

.field public static final E_CAMPAIGN_NOTEXIST:I = 0x7005

.field public static final E_CAMPAIGN_SHOW_ALREADY:I = 0x7001

.field public static final E_CAMPAIGN_SHOW_BLOCKED:I = 0x7004

.field public static final E_CAMPAIGN_SHOW_EXPIRED:I = 0x7000

.field public static final E_CAMPAIGN_SHOW_FAIL:I = 0x7003

.field public static final E_CAMPAIGN_SHOW_PENDING:I = 0x7002

.field public static final E_CAMPAIGN_USER_ID_IS_EMPTY:I = 0x7007

.field public static final E_ENTERPRISE_ID_IS_EMPTY:I = 0x8007

.field public static final E_GOOGLE_PLAY_SERVICE_ERROR:I = 0x2000

.field public static final E_INSUFFICIENT_OPERATION:I = 0x8005

.field public static final E_INTERNAL_ERROR:I = 0x8004

.field public static final E_INVALID_PARAMS:I = 0x8002

.field public static final E_LOGGING_USER_ID_IS_EMPTY:I = 0x800b

.field public static final E_MANIFEST_APPSTORE_MISSING:I = 0x800c

.field public static final E_NOT_INITIALIZED:I = 0x8000

.field public static final E_SESSION_CLOSED:I = 0x8001

.field public static final E_TOKEN_EMPTY:I = 0x8009

.field public static final E_UNSUPPORTED_ANDROID_VERSION:I = 0x2001

.field public static final S_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Analytics"

.field public static final W_ALREADY_INITIALIZED:I = 0x1000

.field static _sApplicationContext:Landroid/content/Context;

.field static _sLock:Ljava/lang/Object;

.field static _sMonitoringActivityCount:I

.field static _sSessionStarted:Z

.field static isDebugging:Z

.field static mDeviceOrientation:I

.field public static mPushCount:I

.field private static mPushIntent:Landroid/content/Intent;

.field private static mTicker:Ljava/lang/String;

.field static sCampginUserIdSetted:Z

.field static sDeliveredPushToken:Z

.field static sDeviceIdCollected:Z

.field static sDeviceIdCollectionStarted:Z

.field static sInitialized:Z

.field static sKeepingTraceSended:Z

.field static sLoggingUserIdSetted:Z

.field static sUseLoggingUserId:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/toast/android/analytics/common/Analytics;->mPushCount:I

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollectionStarted:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sUseLoggingUserId:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sCampginUserIdSetted:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sKeepingTraceSended:Z

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sDeliveredPushToken:Z

    const/4 v0, -0x1

    sput v0, Lcom/toast/android/analytics/common/Analytics;->mDeviceOrientation:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/Analytics;->_sLock:Ljava/lang/Object;

    sput v1, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->isDebugging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/toast/android/analytics/common/Analytics;->redrawPromotion(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->sendKeepingTrace()V

    return-void
.end method

.method private static activate()I
    .locals 4

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->startSession()I

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static checkLeak()Lorg/json/JSONArray;
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/external/leaktest/LeakLib;->getLeakInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/external/leaktest/MemoryInfo;

    iget v0, v0, Lcom/toast/android/analytics/external/leaktest/MemoryInfo;->heap:I

    const v3, 0xffff

    and-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static checkLoggingUserId()I
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "useLoggingUserId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isLoggingUserIdSetted()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x800b

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x8000

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x8001

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static collectDeviceId(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    new-instance v1, Lcom/toast/android/analytics/common/Analytics$3;

    invoke-direct {v1, p0}, Lcom/toast/android/analytics/common/Analytics$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/InformationUtil;->collectDeviceInformation(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V

    return-void
.end method

.method private static deactivate()I
    .locals 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v1, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deactive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->endSession()I

    const/4 v2, 0x0

    sput v2, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static deliveryPushToken()V
    .locals 4

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sDeliveredPushToken:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->tracePushToken(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sDeliveredPushToken:Z

    const-string v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushToken Delivered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static endSession()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v1, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->getInstance()Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->stop()V

    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->_sSessionStarted:Z

    goto :goto_0
.end method

.method private static executeTraceInstallation()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "appstore"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendLocalInstallReferrer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceInstallation(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install trace success!! ... store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateLocalInstallReferrer(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceRefferer()V

    return-void
.end method

.method private static executeTraceInstallationAnonymous()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "appstore"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendLocalInstallReferrer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendInstallAnonymous()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceInstallationByAnonymous(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install anonymous trace success!! ... store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateInstallAnonymous(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static executeTraceInstallationReferrerAnonymous()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendInstallReferrerAnonymous()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "Analytics"

    const-string v1, "install referrer anonymous is empty. do not send."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceInstallationReferrerByAnonymous(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install referrer anonymous trace success!! ... installationPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateInstallReferrerAnonymous(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendInstallReferrerFacebookAnonymous()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->getInstallReferrerFacebook()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v0, "Analytics"

    const-string v1, "install referrer anonymous facebook is empty. do not send."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceInstallationReferrerByAnonymous(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install referrer anonymous facebook trace success!! ... installationPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateInstallReferrerFacebookAnonymous(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static executeTraceRefferer()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendInstallReferrer()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "INSTALL_REFERRER_URL"

    const-string v3, "unknown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "Analytics"

    const-string v1, "install referrer is empty. do not send."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceInstallationReferrer(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install referrer trace success!! ... install path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->notice(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateInstallReferrer(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->isDebugging:Z

    return v0
.end method

.method public static getPushIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/Analytics;->mPushIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getResultMessage(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unsupported Error Code"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Success"

    goto :goto_0

    :sswitch_1
    const-string v0, "Was already Initalized"

    goto :goto_0

    :sswitch_2
    const-string v0, "google play service error"

    goto :goto_0

    :sswitch_3
    const-string v0, "unsupported android version"

    goto :goto_0

    :sswitch_4
    const-string v0, "SDK is not initialized. please call initializeSdk first"

    goto :goto_0

    :sswitch_5
    const-string v0, "SDK is not started session. please call trackActivation first"

    goto :goto_0

    :sswitch_6
    const-string v0, "Invalid parameter(s)"

    goto :goto_0

    :sswitch_7
    const-string v0, "Already exists"

    goto :goto_0

    :sswitch_8
    const-string v0, "Internal error"

    goto :goto_0

    :sswitch_9
    const-string v0, "Insufficient operation"

    goto :goto_0

    :sswitch_a
    const-string v0, "Application id cannot be empty"

    goto :goto_0

    :sswitch_b
    const-string v0, "enterprise id cannot be empty"

    goto :goto_0

    :sswitch_c
    const-string v0, "Application version cannot be empty"

    goto :goto_0

    :sswitch_d
    const-string v0, "device token cannot be empty"

    goto :goto_0

    :sswitch_e
    const-string v0, "activity cannot be empty"

    goto :goto_0

    :sswitch_f
    const-string v0, "logging user id cannot be empty"

    goto :goto_0

    :sswitch_10
    const-string v0, "appstore meta tag is missing check AndroidManifest.xml"

    goto :goto_0

    :sswitch_11
    const-string v0, "campaign show exipred"

    goto :goto_0

    :sswitch_12
    const-string v0, "campaign show already"

    goto :goto_0

    :sswitch_13
    const-string v0, "campaign show pending"

    goto :goto_0

    :sswitch_14
    const-string v0, "campaign show fail"

    goto :goto_0

    :sswitch_15
    const-string v0, "campaign is blocked or completed"

    goto :goto_0

    :sswitch_16
    const-string v0, "campaign do not exist"

    goto :goto_0

    :sswitch_17
    const-string v0, "whole campaign of device is disabled by user"

    goto :goto_0

    :sswitch_18
    const-string v0, "campaign user id cannot be empty"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_3
        0x7000 -> :sswitch_11
        0x7001 -> :sswitch_12
        0x7002 -> :sswitch_13
        0x7003 -> :sswitch_14
        0x7004 -> :sswitch_15
        0x7005 -> :sswitch_16
        0x7006 -> :sswitch_17
        0x7007 -> :sswitch_18
        0x8000 -> :sswitch_4
        0x8001 -> :sswitch_5
        0x8002 -> :sswitch_6
        0x8003 -> :sswitch_7
        0x8004 -> :sswitch_8
        0x8005 -> :sswitch_9
        0x8006 -> :sswitch_a
        0x8007 -> :sswitch_b
        0x8008 -> :sswitch_c
        0x8009 -> :sswitch_d
        0x800a -> :sswitch_e
        0x800b -> :sswitch_f
        0x800c -> :sswitch_10
    .end sparse-switch
.end method

.method private static getUserAgent(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "userAgent"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Analytics"

    const-string v1, "Get UserAgent"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/toast/android/analytics/common/Analytics$2;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/Analytics$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.6"

    return-object v0
.end method

.method public static initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6

    const/16 v2, 0x2001

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v3, :cond_8

    const-string v3, "Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Analytics SDK Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->notice(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Analytics"

    const-string v4, "*********** initializSdk start **********"

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Analytics SDK Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- App ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Company ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Analytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- App Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->getResultMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Analytics"

    const-string v1, "*********** initializSdk end (fail) **********"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    sget-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/toast/android/analytics/common/RequestManager;->initialize(Landroid/content/Context;)V

    sget-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/toast/android/analytics/promotion/PromotionManager;->initialize(Landroid/content/Context;)V

    sget-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->collectDeviceInformation(Landroid/content/Context;)V

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v2

    const-string v3, "useLoggingUserId"

    const-string v4, "Y"

    invoke-virtual {v2, v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v3

    sget-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/toast/android/analytics/common/config/Settings;->initialize(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Analytics"

    const-string v1, "*********** initializSdk end (fail) **********"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v2

    const-string v3, "useLoggingUserId"

    const-string v4, "N"

    invoke-virtual {v2, v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "appId"

    invoke-virtual {v3, v2, p1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enterpriseId"

    invoke-virtual {v3, v2, p2}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appVersion"

    invoke-virtual {v3, v2, p3}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appId"

    invoke-virtual {v3, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const v1, 0x8006

    goto :goto_0

    :cond_3
    const-string v2, "enterpriseId"

    invoke-virtual {v3, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const v1, 0x8007

    goto :goto_0

    :cond_4
    const-string v2, "appVersion"

    invoke-virtual {v3, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const v1, 0x8008

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->keepGoing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v1, 0x2000

    goto/16 :goto_0

    :cond_6
    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-eqz p4, :cond_7

    move v0, v1

    :cond_7
    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    sput-boolean p4, Lcom/toast/android/analytics/common/Analytics;->sUseLoggingUserId:Z

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Use Logging Flag : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "useLoggingUserId"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Log Server : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "serverHost"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Promotion List Server : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "promotionHost"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Promotion Exec Server : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "promotionExecHost"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Promotion Info Server : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "toastPromotionInfoHost"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "Analytics"

    const-string v2, "*********** initializSdk end (success) **********"

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1000

    goto :goto_2
.end method

.method public static isActive()Z
    .locals 3

    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring Activity Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/toast/android/analytics/common/Analytics;->_sMonitoringActivityCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 3

    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    return v0
.end method

.method public static isLoggingUserIdSetted()Z
    .locals 3

    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging User ID Setted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    return v0
.end method

.method public static readyForPromotion()Z
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sCampginUserIdSetted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readyForTrace()Z
    .locals 3

    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready for Trace : init="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / didCollect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / setUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readyForTraceWithoutLoggingId()Z
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static redrawPromotion(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static sendFacebookDeeplinkInfo()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendInstallReferrerFacebookAnonymous()Z

    move-result v1

    if-ne v1, v5, :cond_0

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "FACEBOOK_DEEPLINK_INFO"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send facebook deeplink info anonymous : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/toast/android/analytics/GameAnalytics;->traceInstallationReferrerByAnonymous(Ljava/lang/String;)I

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateInstallReferrerFacebookAnonymous(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendFacebookDeeplinkInfo()Z

    move-result v1

    if-ne v1, v5, :cond_1

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "FACEBOOK_DEEPLINK_INFO"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send facebook deeplink info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/toast/android/analytics/GameAnalytics;->traceInstallationReferrer(Ljava/lang/String;)I

    sget-object v1, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateFacebookDeeplinkInfoSent(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static declared-synchronized sendKeepingTrace()V
    .locals 3

    const-class v1, Lcom/toast/android/analytics/common/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics"

    const-string v2, "Send Keeping Trace"

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTraceWithoutLoggingId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceInstallationAnonymous()V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceInstallationReferrerAnonymous()V

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTrace()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sKeepingTraceSended:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->traceStart()I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceActivation(Landroid/app/Activity;)I

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->sendFacebookDeeplinkInfo()V

    invoke-static {}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->getInstance()Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sKeepingTraceSended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setCampaignUserId(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    sput-boolean v2, Lcom/toast/android/analytics/common/Analytics;->sCampginUserIdSetted:Z

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "campaign_userId"

    invoke-virtual {v0, v1, p0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->start()V

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "useLoggingUserId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getToastPromotionInfo(Z)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/toast/android/analytics/common/Analytics;->isDebugging:Z

    return-void
.end method

.method public static setGcmSenderId(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->setSenderId(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setLoggingUserId(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLoggingId(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setPushData(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_2

    const-string v0, "cid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2, v0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "cid_for_notify"

    invoke-virtual {v1, v2, v0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "pexe"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "pexe"

    invoke-virtual {v1, v2, v0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "psq"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v2, "psq"

    invoke-virtual {v0, v2, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static setPushIntent(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/Analytics;->mPushIntent:Landroid/content/Intent;

    return-void
.end method

.method public static setUserId(Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set User ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x8000

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/toast/android/analytics/common/Analytics;->setCampaignUserId(Ljava/lang/String;)I

    :cond_2
    sget-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sUseLoggingUserId:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/toast/android/analytics/common/Analytics;->setLoggingUserId(Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sLoggingUserIdSetted:Z

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->sendKeepingTrace()V

    goto :goto_0
.end method

.method private static startSession()I
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/RequestManager;->getInstance()Lcom/toast/android/analytics/common/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/RequestManager;->start()V

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->start()V

    invoke-static {}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->getInstance()Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->_sSessionStarted:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static traceAction(Ljava/util/HashMap;)I
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->_sSessionStarted:Z

    if-nez v0, :cond_1

    const v0, 0x8001

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "debug"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "kv"

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/toast/android/analytics/common/RequestManager;->getInstance()Lcom/toast/android/analytics/common/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/common/RequestManager;->addRequest(Lcom/toast/android/analytics/model/RequestData;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v0, 0x8002

    goto :goto_0
.end method

.method protected static traceActionByForce(Ljava/util/HashMap;)I
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v0, :cond_0

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->_sSessionStarted:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/RequestManager;->getInstance()Lcom/toast/android/analytics/common/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/RequestManager;->start()V

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/GameAnalytics;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "debug"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "kv"

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/toast/android/analytics/common/RequestManager;->getInstance()Lcom/toast/android/analytics/common/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/common/RequestManager;->addRequest(Lcom/toast/android/analytics/model/RequestData;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const v0, 0x8002

    goto :goto_0
.end method

.method public static traceActivation(Landroid/app/Activity;)I
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->setPushData(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/toast/android/analytics/common/Analytics;->getUserAgent(Landroid/app/Activity;)V

    :cond_0
    sget-boolean v1, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-nez v1, :cond_1

    const v0, 0x8000

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTrace()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/toast/android/analytics/common/Analytics;->collectDeviceId(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance v1, Lcom/toast/android/analytics/common/Analytics$1;

    invoke-direct {v1, p0}, Lcom/toast/android/analytics/common/Analytics$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->deliveryPushToken()V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->checkLeak()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->activate()I

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceRefferer()V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->sendFacebookDeeplinkInfo()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v1

    const-string v2, "DEFAULT_TIME_LAPSE_FROM_ACTIVATE_TO_DEACTIVATE"

    invoke-virtual {v1, v2, v11}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->startTimer(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v4

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v5

    const-string v1, ""

    const/4 v1, 0x0

    invoke-virtual {v4}, Lcom/toast/android/analytics/common/config/Settings;->shouldSendExecReferrer()Z

    move-result v2

    if-ne v2, v11, :cond_b

    invoke-virtual {v4}, Lcom/toast/android/analytics/common/config/Settings;->getExecReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Lcom/toast/android/analytics/common/config/Settings;->getExecReferrer()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Analytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Referrer@Activation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_4

    aget-object v9, v8, v0

    aget-object v8, v8, v11

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_2
    :try_start_0
    const-string v1, "a"

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ua"

    const-string v6, "userAgent"

    invoke-virtual {v4, v6}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "track-id"

    sget-object v7, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "track-enable"

    sget-object v7, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ex"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cid"

    invoke-virtual {v4, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "cpid"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ex"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cid"

    invoke-virtual {v4, v2}, Lcom/toast/android/analytics/common/config/Settings;->removeObjectForKey(Ljava/lang/String;)V

    const-string v2, "psq"

    invoke-virtual {v4, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v5, "seq"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "psq"

    invoke-virtual {v4, v0}, Lcom/toast/android/analytics/common/config/Settings;->removeObjectForKey(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v3, :cond_8

    const-string v0, "ex"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ex"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v2, "dinfo"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_6

    const-string v2, "ex"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/toast/android/analytics/common/config/Settings;->updateExecReferrer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private static traceApplist()I
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "TEST"

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TEST"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static traceCampaignAchievement(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "h"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceCampaignClick(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "c"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceCampaignExposure(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "x"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceCampaignReward(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "w"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "pv"

    const-string v3, "protocolVersion"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cid"

    const-string v3, "enterpriseId"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aid"

    const-string v3, "appId"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "av"

    const-string v3, "appVersion"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "did"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ip"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ts"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getClientTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app-uid"

    const-string v3, "logging_userId"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uuid"

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "t"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Analytics"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static traceDeactivation(Landroid/app/Activity;)I
    .locals 6

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v0

    const-string v1, "DEFAULT_TIME_LAPSE_FROM_ACTIVATE_TO_DEACTIVATE"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->stopTimer(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v0

    const-string v1, "DEFAULT_TIME_LAPSE_FROM_START_TO_FINISH"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->stopTimer(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceRefferer()V

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->deliveryPushToken()V

    :try_start_0
    const-string v2, "d"

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "du"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->deactivate()I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method private static traceInstallation(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v1

    :try_start_0
    const-string v2, "i"

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "store"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ua"

    const-string v4, "userAgent"

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "osv"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tz"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "track-id"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "track-enable"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ex"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method private static traceInstallationByAnonymous(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v1

    :try_start_0
    const-string v2, "ia"

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "store"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ua"

    const-string v4, "userAgent"

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "osv"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tz"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "track-id"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "track-enable"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ex"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceActionByForce(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceInstallationReferrer(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v0

    :try_start_0
    const-string v1, "ir"

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "inpath"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osv"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tz"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "track-id"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "track-enable"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ex"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceInstallationReferrerByAnonymous(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v0

    :try_start_0
    const-string v1, "iar"

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "inpath"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osv"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tz"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "track-id"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "track-enable"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ex"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/toast/android/analytics/common/Analytics;->traceActionByForce(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static tracePushToken(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "k"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tk"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method public static traceRewardClick(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "wc"

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8004

    goto :goto_0
.end method

.method private static traceStart()I
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->activate()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->executeTraceInstallation()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    move-result-object v0

    const-string v1, "DEFAULT_TIME_LAPSE_FROM_START_TO_FINISH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->startTimer(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v1

    :try_start_0
    const-string v2, "s"

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceCommonInformation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "uid"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLoggingUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dnm"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cr"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "osv"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tz"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lc"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ua"

    const-string v4, "userAgent"

    invoke-virtual {v0, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "track-id"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "track-enable"

    sget-object v4, Lcom/toast/android/analytics/common/Analytics;->_sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getTrackEnable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ex"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v3, "cid"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "cpid"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v3, "psq"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "seq"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "ex"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/common/Analytics;->traceAction(Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x8004

    goto :goto_0
.end method
