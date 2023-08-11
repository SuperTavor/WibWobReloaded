.class Lcom/adjust/sdk/PackageBuilder;
.super Ljava/lang/Object;


# static fields
.field private static logger:Lcom/adjust/sdk/ILogger;


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private createdAt:J

.field deeplink:Ljava/lang/String;

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field extraParameters:Ljava/util/Map;

.field referrer:Ljava/lang/String;

.field reftag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/PackageBuilder;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iput-object p2, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p4, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/adjust/sdk/ActivityState;->shallowCopy()Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method private addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addDate(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p4}, Lcom/adjust/sdk/Util;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.5f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDuration(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private addInt(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkDeviceIds(Ljava/util/Map;)V
    .locals 3

    const-string v0, "mac_sha1"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mac_md5"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps_adid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/PackageBuilder;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private fillPluginKeys(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;
    .locals 2

    new-instance v0, Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/ActivityPackage;-><init>(Lcom/adjust/sdk/ActivityKind;)V

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setClientSdk(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefaultParameters()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfo(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectConfig(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectActivityState(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectCreatedAt(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->checkDeviceIds(Ljava/util/Map;)V

    return-object v0
.end method

.method private getEventSuffix(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%.5f %s, \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIdsParameters()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfoIds(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectConfig(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectCreatedAt(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->checkDeviceIds(Ljava/util/Map;)V

    return-object v0
.end method

.method private injectActivityState(Ljava/util/Map;)V
    .locals 4

    const-string v0, "android_uuid"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, v1, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "session_count"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v1, v1, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    int-to-long v2, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v0, "subsession_count"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v1, v1, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    int-to-long v2, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v0, "session_length"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v1, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v0, "time_spent"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v1, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method private injectAttribution(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "tracker"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "campaign"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adgroup"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "creative"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private injectConfig(Ljava/util/Map;)V
    .locals 2

    const-string v0, "app_token"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "environment"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_known"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "needs_response_details"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v1}, Lcom/adjust/sdk/AdjustConfig;->hasListener()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps_adid"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "tracking_enabled"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "event_buffering_enabled"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v1, v1, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private injectCreatedAt(Ljava/util/Map;)V
    .locals 4

    const-string v0, "created_at"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDate(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method private injectDeviceInfo(Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->injectDeviceInfoIds(Ljava/util/Map;)V

    const-string v0, "fb_id"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->fbAttributionId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_type"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_manufacturer"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->osName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_version"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api_level"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->apiLevel:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->language:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->country:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen_size"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenSize:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen_format"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenFormat:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen_density"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->screenDensity:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_width"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->displayWidth:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_height"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->displayHeight:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hardware_name"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->hardwareName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpu_type"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->abi:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->fillPluginKeys(Ljava/util/Map;)V

    return-void
.end method

.method private injectDeviceInfoIds(Ljava/util/Map;)V
    .locals 2

    const-string v0, "mac_sha1"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac_md5"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, v1, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getIdsParameters()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "attribution"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v1
.end method

.method public buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getIdsParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "source"

    invoke-direct {p0, v0, v1, p1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_time"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/adjust/sdk/PackageBuilder;->addDate(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "reftag"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "referrer"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deeplink"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->deeplink:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectAttribution(Ljava/util/Map;)V

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "/sdk_click"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v1
.end method

.method public buildEventPackage(Lcom/adjust/sdk/AdjustEvent;)Lcom/adjust/sdk/ActivityPackage;
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "event_count"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v2, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "event_token"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "revenue"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "currency"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback_params"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "partner_params"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "/event"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageBuilder;->getEventSuffix(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v1
.end method

.method public buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "last_interval"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    const-string v1, "default_tracker"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "/session"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v1
.end method
