.class public Ltv/superawesome/lib/saevents/events/SAClickEvent;
.super Ltv/superawesome/lib/saevents/events/SAServerEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAServerEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    if-ne v0, v1, :cond_0

    const-string v0, "/video/click"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/click"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getQuery()Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0xe

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "placement"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "creative"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "line_item"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getConnectionType()Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sdkVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAClickEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getCachebuster()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method
