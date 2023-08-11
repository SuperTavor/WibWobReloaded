.class public Ltv/superawesome/lib/saadloader/SALoader;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    iput-object p1, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/saadloader/SALoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAwesomeAdsEndpoint(Ltv/superawesome/lib/sasession/SASession;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method public getAwesomeAdsHeader(Ltv/superawesome/lib/sasession/SASession;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x4

    :try_start_0
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

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getUserAgent()Ljava/lang/String;

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

.method public getAwesomeAdsQuery(Ltv/superawesome/lib/sasession/SASession;)Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x12

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getTestMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sdkVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getCachebuster()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dauid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getDauId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getConnectionType()Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getLang()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "device"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-virtual {p1}, Ltv/superawesome/lib/sasession/SASession;->getDevice()Ljava/lang/String;

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

.method public loadAd(ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V
    .locals 7

    invoke-virtual {p0, p2, p1}, Ltv/superawesome/lib/saadloader/SALoader;->getAwesomeAdsEndpoint(Ltv/superawesome/lib/sasession/SASession;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Ltv/superawesome/lib/saadloader/SALoader;->getAwesomeAdsQuery(Ltv/superawesome/lib/sasession/SASession;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltv/superawesome/lib/saadloader/SALoader;->getAwesomeAdsHeader(Ltv/superawesome/lib/sasession/SASession;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Ltv/superawesome/lib/saadloader/SALoader;->loadAd(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V
    .locals 6

    if-eqz p6, :cond_0

    :goto_0
    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iget-object v1, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    new-instance v5, Ltv/superawesome/lib/saadloader/SALoader$2;

    invoke-direct {v5, p0, p4, p5, p6}, Ltv/superawesome/lib/saadloader/SALoader$2;-><init>(Ltv/superawesome/lib/saadloader/SALoader;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void

    :cond_0
    new-instance v0, Ltv/superawesome/lib/saadloader/SALoader$1;

    invoke-direct {v0, p0}, Ltv/superawesome/lib/saadloader/SALoader$1;-><init>(Ltv/superawesome/lib/saadloader/SALoader;)V

    goto :goto_0
.end method

.method public processAd(ILjava/lang/String;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    :goto_0
    new-instance v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-direct {v3}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;-><init>()V

    iput p3, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    iput p1, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    if-nez p2, :cond_1

    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    :goto_1
    return-void

    :cond_0
    new-instance p5, Ltv/superawesome/lib/saadloader/SALoader$3;

    invoke-direct {p5, p0}, Ltv/superawesome/lib/saadloader/SALoader$3;-><init>(Ltv/superawesome/lib/saadloader/SALoader;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_2
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    :goto_3
    if-eqz v2, :cond_2

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {p4}, Ltv/superawesome/lib/sasession/SASession;->getConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/sasession/SAConfiguration;->ordinal()I

    move-result v1

    invoke-direct {v0, p1, v1, v2}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(IILorg/json/JSONObject;)V

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v1, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iget-object v1, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ltv/superawesome/lib/saadloader/SALoader$6;->$SwitchMap$tv$superawesome$lib$samodelspace$saad$SACreativeFormat:[I

    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :pswitch_1
    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-static {v0}, Ltv/superawesome/lib/saadloader/postprocessor/SAProcessHTML;->formatCreativeIntoImageHTML(Ltv/superawesome/lib/samodelspace/saad/SAAd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-static {v0}, Ltv/superawesome/lib/saadloader/postprocessor/SAProcessHTML;->formatCreativeIntoRichMediaHTML(Ltv/superawesome/lib/samodelspace/saad/SAAd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-static {v0}, Ltv/superawesome/lib/saadloader/postprocessor/SAProcessHTML;->formatCreativeIntoTagHTML(Ltv/superawesome/lib/samodelspace/saad/SAAd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Ltv/superawesome/lib/savastparser/SAVASTParser;

    iget-object v2, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltv/superawesome/lib/savastparser/SAVASTParser;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    new-instance v4, Ltv/superawesome/lib/saadloader/SALoader$4;

    invoke-direct {v4, p0, v0, p5, v3}, Ltv/superawesome/lib/saadloader/SALoader$4;-><init>(Ltv/superawesome/lib/saadloader/SALoader;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/saadloader/SALoaderInterface;Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    invoke-virtual {v1, v2, v4}, Ltv/superawesome/lib/savastparser/SAVASTParser;->parseVAST(Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_6

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    :try_start_2
    new-instance v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {p4}, Ltv/superawesome/lib/sasession/SASession;->getConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Ltv/superawesome/lib/sasession/SAConfiguration;->ordinal()I

    move-result v4

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, p1, v4, v5}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(IILorg/json/JSONObject;)V

    iget-object v4, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v5, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    sget-object v4, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v4, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    new-instance v0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

    iget-object v2, p0, Ltv/superawesome/lib/saadloader/SALoader;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;-><init>(Landroid/content/Context;)V

    new-instance v2, Ltv/superawesome/lib/saadloader/SALoader$5;

    invoke-direct {v2, p0, v3, p5}, Ltv/superawesome/lib/saadloader/SALoader$5;-><init>(Ltv/superawesome/lib/saadloader/SALoader;Ltv/superawesome/lib/samodelspace/saad/SAResponse;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    invoke-virtual {v0, v1, v2}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->downloadListOfFiles(Ljava/util/List;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;)V

    goto/16 :goto_1

    :cond_6
    invoke-interface {p5, v3}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
