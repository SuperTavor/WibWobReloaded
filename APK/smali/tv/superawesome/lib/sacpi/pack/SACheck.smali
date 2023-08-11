.class public Ltv/superawesome/lib/sacpi/pack/SACheck;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private network:Ltv/superawesome/lib/sanetwork/request/SANetwork;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/pack/SACheck;->context:Landroid/content/Context;

    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sacpi/pack/SACheck;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    return-void
.end method


# virtual methods
.method public askServerForPackagesThatGeneratedThisInstall(Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;)V
    .locals 6

    invoke-virtual {p0, p2}, Ltv/superawesome/lib/sacpi/pack/SACheck;->getCheckInstallUrl(Ltv/superawesome/lib/sasession/SASession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sacpi/pack/SACheck;->getCheckInstallQuery(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/pack/SACheck;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/pack/SACheck;->context:Landroid/content/Context;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Ltv/superawesome/lib/sacpi/pack/SACheck$1;

    invoke-direct {v5, p0, p3}, Ltv/superawesome/lib/sacpi/pack/SACheck$1;-><init>(Ltv/superawesome/lib/sacpi/pack/SACheck;Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;)V

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void
.end method

.method public getCheckInstallQuery(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getCheckInstallUrl(Ltv/superawesome/lib/sasession/SASession;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/checkinstall"

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

.method public parseServerResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_1
.end method
