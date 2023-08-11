.class public Lcom/adjust/sdk/SdkClickHandler;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/ISdkClickHandler;


# instance fields
.field private backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private internalHandler:Landroid/os/Handler;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;

.field private paused:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/SdkClickHandler;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/SdkClickHandler;->start()V

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->init(Z)V

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/adjust/sdk/SdkClickHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->internalHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/SdkClickHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClickInternal(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private logErrorMessage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s. (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private retrySending(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 5

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->increaseRetries()I

    move-result v0

    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Retrying sdk_click package for the %d time"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private sendNextSdkClick()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/SdkClickHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/SdkClickHandler$2;-><init>(Lcom/adjust/sdk/SdkClickHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSdkClickInternal(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app.adjust.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySending(Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sdk_click failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Sdk_click request timed out. Will retry later"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySending(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Sdk_click request failed. Will retry later"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySending(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Sdk_click runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSending()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    return-void
.end method

.method public resumeSending()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    return-void
.end method

.method public sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/SdkClickHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/SdkClickHandler$1;-><init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
