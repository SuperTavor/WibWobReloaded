.class public Lcom/adjust/sdk/AdjustFactory;
.super Ljava/lang/Object;


# static fields
.field private static activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private static attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private static httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private static logger:Lcom/adjust/sdk/ILogger;

.field private static packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private static packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static requestHandler:Lcom/adjust/sdk/IRequestHandler;

.field private static sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

.field private static sessionInterval:J

.field private static subsessionInterval:J

.field private static timerInterval:J

.field private static timerStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    goto :goto_0
.end method

.method public static getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/IAttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    goto :goto_0
.end method

.method public static getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0
.end method

.method public static getHttpsURLGetConnection(Ljava/net/URL;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    .locals 2

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    new-instance v1, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0, p0}, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ljava/net/URL;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    sget-object v1, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ljava/net/URL;)V

    goto :goto_0
.end method

.method public static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/Logger;

    invoke-direct {v0}, Lcom/adjust/sdk/Logger;-><init>()V

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method public static getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/PackageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/PackageHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p0, p1, p2}, Lcom/adjust/sdk/IPackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    goto :goto_0
.end method

.method public static getPackageHandlerBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/RequestHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/RequestHandler;-><init>(Lcom/adjust/sdk/IPackageHandler;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IRequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    goto :goto_0
.end method

.method public static getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getSdkClickHandler(Z)Lcom/adjust/sdk/ISdkClickHandler;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/SdkClickHandler;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/ISdkClickHandler;->init(Z)V

    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    goto :goto_0
.end method

.method public static getSessionInterval()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0x1b7740

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    goto :goto_0
.end method

.method public static getSubsessionInterval()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    goto :goto_0
.end method

.method public static getTimerInterval()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    goto :goto_0
.end method

.method public static getTimerStart()J
    .locals 4

    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    goto :goto_0
.end method

.method public static setActivityHandler(Lcom/adjust/sdk/IActivityHandler;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    return-void
.end method

.method public static setAttributionHandler(Lcom/adjust/sdk/IAttributionHandler;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    return-void
.end method

.method public static setHttpsURLConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public static setLogger(Lcom/adjust/sdk/ILogger;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public static setPackageHandler(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    return-void
.end method

.method public static setPackageHandlerBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method public static setRequestHandler(Lcom/adjust/sdk/IRequestHandler;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    return-void
.end method

.method public static setSdkClickBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method public static setSdkClickHandler(Lcom/adjust/sdk/ISdkClickHandler;)V
    .locals 0

    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    return-void
.end method

.method public static setSessionInterval(J)V
    .locals 0

    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    return-void
.end method

.method public static setSubsessionInterval(J)V
    .locals 0

    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    return-void
.end method

.method public static setTimerInterval(J)V
    .locals 0

    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    return-void
.end method

.method public static setTimerStart(J)V
    .locals 0

    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    return-void
.end method
