.class public Lcom/adjust/sdk/RequestHandler;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/IRequestHandler;


# instance fields
.field private internalHandler:Landroid/os/Handler;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/RequestHandler;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/RequestHandler;->start()V

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/adjust/sdk/RequestHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->internalHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/RequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/RequestHandler;->sendInternal(Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method

.method private closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s. (%s) Will retry later"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    iput-object v0, v1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, v1, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private sendInternal(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 3

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

    invoke-static {v0, v1, v2, p2}, Lcom/adjust/sdk/Util;->createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    iget-object v1, v0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Request timed out"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Request failed"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
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

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    iput-object v0, v1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    return-void
.end method

.method public sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/RequestHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/RequestHandler$1;-><init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
