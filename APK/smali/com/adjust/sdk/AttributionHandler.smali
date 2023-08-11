.class public Lcom/adjust/sdk/AttributionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adjust/sdk/IAttributionHandler;


# static fields
.field private static final ATTRIBUTION_TIMER_NAME:Ljava/lang/String; = "Attribution timer"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private attributionPackage:Lcom/adjust/sdk/ActivityPackage;

.field private hasListener:Z

.field public lastUrlUsed:Ljava/net/URL;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private paused:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private timer:Lcom/adjust/sdk/TimerOnce;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/TimerOnce;

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adjust/sdk/AttributionHandler$1;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/AttributionHandler$1;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    const-string v3, "Attribution timer"

    invoke-direct {v0, v1, v2, v3}, Lcom/adjust/sdk/TimerOnce;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adjust/sdk/AttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Timer not initialized, attribution handler is disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/AttributionHandler;->getAttributionInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AttributionHandler;->checkSessionResponseInternal(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionResponseInternal(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method private buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;
    .locals 4

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "https"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "app.adjust.com"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sent_at"

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private checkAttributionInternal(Lcom/adjust/sdk/ResponseData;)V
    .locals 4

    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v1, "ask_in"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AttributionHandler;->getAttribution(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v1, "attribution"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/AdjustAttribution;->fromJson(Lorg/json/JSONObject;)Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    iput-object v0, p1, Lcom/adjust/sdk/ResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    goto :goto_0
.end method

.method private checkAttributionResponse(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$3;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private checkAttributionResponseInternal(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionInternal(Lcom/adjust/sdk/ResponseData;)V

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method private checkSessionResponseInternal(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionInternal(Lcom/adjust/sdk/ResponseData;)V

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method private getAttribution(J)V
    .locals 5

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    sget-object v2, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Waiting to query attribution in %s seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    goto :goto_0
.end method

.method private getAttributionInternal()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->hasListener:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Attribution handler is paused"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v3}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AttributionHandler;->buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->createGETHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    move-result-object v1

    iget-object v0, v1, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-static {v0, v2}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    iget-object v1, v1, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;->url:Ljava/net/URL;

    iput-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->lastUrlUsed:Ljava/net/URL;

    instance-of v1, v0, Lcom/adjust/sdk/AttributionResponseData;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionResponse(Lcom/adjust/sdk/AttributionResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Failed to get attribution (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$2;-><init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getAttribution()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AttributionHandler;->getAttribution(J)V

    return-void
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    iput-boolean p4, p0, Lcom/adjust/sdk/AttributionHandler;->hasListener:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSending()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    return-void
.end method

.method public resumeSending()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    return-void
.end method
