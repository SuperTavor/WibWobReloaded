.class public Lcom/toast/android/analytics/heartbeat/HeartBeatThread;
.super Lcom/toast/android/analytics/common/job/WorkerThread;


# static fields
.field static final APP_KEY:Ljava/lang/String; = "appKey"

.field static final COUNTRY_CODE:Ljava/lang/String; = "countryCode"

.field private static final DEFAULT_HEARTBEAT_INTERVAL:I = 0x78

.field static final DEVICE_ID:Ljava/lang/String; = "did"

.field static final NAME:Ljava/lang/String; = "HeartBeatThread"

.field static final OS_TYPE:Ljava/lang/String; = "operatingSystem"

.field private static final RESPONSE_KEY_INTERVAL:Ljava/lang/String; = "ItvSec"

.field static final TAG:Ljava/lang/String; = "HeartBeatThread"


# instance fields
.field private heartbeatInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->heartbeatInterval:I

    const-string v0, "HeartBeatThread"

    iput-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->getIntervalFromResponse(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->setHeartbeatInterval(I)V

    return-void
.end method

.method private getHeartbeatInterval()I
    .locals 2

    const/16 v1, 0x78

    iget v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->heartbeatInterval:I

    if-gt v0, v1, :cond_0

    iput v1, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->heartbeatInterval:I

    :cond_0
    iget v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->heartbeatInterval:I

    return v0
.end method

.method private getHostNumber()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method private getIntervalFromResponse(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ItvSec"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeHeartBeat(I)Lcom/toast/android/analytics/model/RequestData;
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appKey"

    const-string v3, "appId"

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "countryCode"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operatingSystem"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getOsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/model/RequestData;->setId(I)V

    return-object v0
.end method

.method private sendHeartBeat()V
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->getHeartBeatSequence()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->makeHeartBeat(I)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v2, Lcom/toast/android/analytics/common/network/HeartBeatRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api-webrp-analytics.cloud.toast.com/analytics/v1/presence/heartbeat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->getHostNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/toast/android/analytics/common/network/HeartBeatRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    new-instance v0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;

    invoke-direct {v0, p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;-><init>(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;)V

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    invoke-virtual {v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    :cond_0
    return-void
.end method

.method private setHeartbeatInterval(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->heartbeatInterval:I

    return-void
.end method


# virtual methods
.method public cancelStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mTerminationReserved:Z

    return-void
.end method

.method public execute()V
    .locals 2

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mTerminationReserved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->close()V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->sendHeartBeat()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->getHeartbeatInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->close()V

    throw v0
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->mTerminationReserved:Z

    :cond_0
    return-void
.end method
