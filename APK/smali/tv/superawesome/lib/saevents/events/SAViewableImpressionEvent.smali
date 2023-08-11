.class public Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;
.super Ltv/superawesome/lib/saevents/events/SAServerEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAServerEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "/event"

    return-object v0
.end method

.method public getQuery()Lorg/json/JSONObject;
    .locals 5

    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "sdkVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getConnectionType()Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getCachebuster()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "line_item"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "creative"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "viewable_impression"

    aput-object v4, v2, v3

    invoke-static {v2}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->encodeDictAsJsonDict(Lorg/json/JSONObject;)Ljava/lang/String;

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
