.class public Ltv/superawesome/lib/sacpi/install/SAInstall;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private network:Ltv/superawesome/lib/sanetwork/request/SANetwork;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/install/SAInstall;->context:Landroid/content/Context;

    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sacpi/install/SAInstall;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    return-void
.end method


# virtual methods
.method public getInstallHeader()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Content-Type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "User-Agent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/sacpi/install/SAInstall;->context:Landroid/content/Context;

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getInstallQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "sourceBundle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getInstallUrl(Ltv/superawesome/lib/sasession/SASession;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseServerResponse(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public sendInstallEventToServer(Ljava/lang/String;Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;)V
    .locals 6

    invoke-virtual {p0, p3}, Ltv/superawesome/lib/sacpi/install/SAInstall;->getInstallUrl(Ltv/superawesome/lib/sasession/SASession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ltv/superawesome/lib/sacpi/install/SAInstall;->getInstallQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Ltv/superawesome/lib/sacpi/install/SAInstall;->getInstallHeader()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/install/SAInstall;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/install/SAInstall;->context:Landroid/content/Context;

    new-instance v5, Ltv/superawesome/lib/sacpi/install/SAInstall$1;

    invoke-direct {v5, p0, p4}, Ltv/superawesome/lib/sacpi/install/SAInstall$1;-><init>(Ltv/superawesome/lib/sacpi/install/SAInstall;Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;)V

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void
.end method
