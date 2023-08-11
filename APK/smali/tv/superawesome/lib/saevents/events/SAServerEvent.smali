.class public Ltv/superawesome/lib/saevents/events/SAServerEvent;
.super Ljava/lang/Object;


# instance fields
.field protected ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field protected context:Landroid/content/Context;

.field private network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

.field protected session:Ltv/superawesome/lib/sasession/SASession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->context:Landroid/content/Context;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iput-object p1, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->context:Landroid/content/Context;

    iput-object p2, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iput-object p3, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
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

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->context:Landroid/content/Context;

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v0}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;
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

.method public triggerEvent()V
    .locals 6

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iget-object v1, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getQuery()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getHeader()Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ltv/superawesome/lib/saevents/events/SAServerEvent$1;

    invoke-direct {v5, p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent$1;-><init>(Ltv/superawesome/lib/saevents/events/SAServerEvent;)V

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void
.end method

.method public triggerEvent(Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;)V
    .locals 6

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iget-object v1, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getQuery()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;->getHeader()Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;

    invoke-direct {v5, p0, p1}, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;-><init>(Ltv/superawesome/lib/saevents/events/SAServerEvent;Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;)V

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void
.end method
