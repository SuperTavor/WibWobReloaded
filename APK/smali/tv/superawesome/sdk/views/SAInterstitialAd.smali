.class public Ltv/superawesome/sdk/views/SAInterstitialAd;
.super Landroid/app/Activity;


# static fields
.field private static ads:Ljava/util/HashMap;

.field private static configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

.field private static isBackButtonEnabled:Z

.field private static isParentalGateEnabled:Z

.field private static isTestingEnabled:Z

.field private static listener:Ltv/superawesome/sdk/views/SAInterface;

.field private static orientation:Ltv/superawesome/sdk/views/SAOrientation;

.field private static session:Ltv/superawesome/lib/sasession/SASession;


# instance fields
.field private ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field private closeButton:Landroid/widget/ImageButton;

.field private interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

.field private parent:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    new-instance v0, Ltv/superawesome/sdk/views/SAInterstitialAd$1;

    invoke-direct {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd$1;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultParentalGate()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isParentalGateEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultTestMode()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isTestingEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultBackButton()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isBackButtonEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultOrientation()Ltv/superawesome/sdk/views/SAOrientation;

    move-result-object v0

    sput-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v0

    sput-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/sdk/views/SAInterstitialAd;)V
    .locals 0

    invoke-direct {p0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->close()V

    return-void
.end method

.method static synthetic access$100()Ltv/superawesome/lib/sasession/SASession;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method private close()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v0}, Ltv/superawesome/sdk/views/SABannerAd;->close()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/superawesome/sdk/views/SABannerAd;->setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setRequestedOrientation(I)V

    return-void
.end method

.method public static disableBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setBackButton(Z)V

    return-void
.end method

.method public static disableParentalGate()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setParentalGate(Z)V

    return-void
.end method

.method public static disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setTestMode(Z)V

    return-void
.end method

.method public static enableBackButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setBackButton(Z)V

    return-void
.end method

.method public static enableParentalGate()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setParentalGate(Z)V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setTestMode(Z)V

    return-void
.end method

.method private static getIsBackButtonEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isBackButtonEnabled:Z

    return v0
.end method

.method private static getIsParentalGateEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isParentalGateEnabled:Z

    return v0
.end method

.method private static getListener()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method private static getOrientation()Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    return-object v0
.end method

.method public static hasAdAvailable(I)Z
    .locals 2

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(ILandroid/content/Context;)V
    .locals 3

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ltv/superawesome/lib/saadloader/SALoader;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/saadloader/SALoader;-><init>(Landroid/content/Context;)V

    new-instance v1, Ltv/superawesome/lib/sasession/SASession;

    invoke-direct {v1, p1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v1, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-boolean v2, Ltv/superawesome/sdk/views/SAInterstitialAd;->isTestingEnabled:Z

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    sget-object v1, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v2, Ltv/superawesome/sdk/views/SAInterstitialAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/sdk/SuperAwesome;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setVersion(Ljava/lang/String;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAInterstitialAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v2, Ltv/superawesome/sdk/views/SAInterstitialAd$3;

    invoke-direct {v2, v0, p0}, Ltv/superawesome/sdk/views/SAInterstitialAd$3;-><init>(Ltv/superawesome/lib/saadloader/SALoader;I)V

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->prepareSession(Ltv/superawesome/lib/sasession/SASessionInterface;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public static play(ILandroid/content/Context;)V
    .locals 3

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v1, :cond_1

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltv/superawesome/sdk/views/SAInterstitialAd;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ad"

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public static setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ads:Ljava/util/HashMap;

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setBackButton(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isBackButtonEnabled:Z

    return-void
.end method

.method public static setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    .locals 0

    sput-object p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public static setConfigurationProduction()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setConfigurationStaging()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setListener(Ltv/superawesome/sdk/views/SAInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    sput-object p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-void

    :cond_0
    sget-object p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    goto :goto_0
.end method

.method public static setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V
    .locals 0

    sput-object p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    return-void
.end method

.method public static setOrientationAny()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setOrientationLandscape()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setOrientationPortrait()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setParentalGate(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isParentalGateEnabled:Z

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->isTestingEnabled:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getIsBackButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x16e360

    const v8, 0xf4240

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getIsParentalGateEnabled()Z

    move-result v0

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getOrientation()Ltv/superawesome/sdk/views/SAOrientation;

    move-result-object v1

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-static {v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    sget-object v3, Ltv/superawesome/sdk/views/SAInterstitialAd$4;->$SwitchMap$tv$superawesome$sdk$views$SAOrientation:[I

    invoke-virtual {v1}, Ltv/superawesome/sdk/views/SAOrientation;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    invoke-static {v8, v9}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ltv/superawesome/sdk/views/SABannerAd;

    invoke-direct {v1, p0}, Ltv/superawesome/sdk/views/SABannerAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v8, v9}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ltv/superawesome/sdk/views/SABannerAd;->setId(I)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Ltv/superawesome/sdk/views/SABannerAd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v1, v5}, Ltv/superawesome/sdk/views/SABannerAd;->setColor(Z)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {v1, v3}, Ltv/superawesome/sdk/views/SABannerAd;->setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    sget-boolean v3, Ltv/superawesome/sdk/views/SAInterstitialAd;->isTestingEnabled:Z

    invoke-virtual {v1, v3}, Ltv/superawesome/sdk/views/SABannerAd;->setTestMode(Z)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    sget-object v3, Ltv/superawesome/sdk/views/SAInterstitialAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {v1, v3}, Ltv/superawesome/sdk/views/SABannerAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v1, v2}, Ltv/superawesome/sdk/views/SABannerAd;->setListener(Ltv/superawesome/sdk/views/SAInterface;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v1, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setParentalGate(Z)V

    invoke-static {p0}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v0

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v7, v0

    float-to-int v2, v2

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Ltv/superawesome/sdk/views/SAInterstitialAd$2;

    invoke-direct {v1, p0}, Ltv/superawesome/sdk/views/SAInterstitialAd$2;-><init>(Ltv/superawesome/sdk/views/SAInterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->parent:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd;->interstitialBanner:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v0, p0}, Ltv/superawesome/sdk/views/SABannerAd;->play(Landroid/content/Context;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, v6}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v5}, Ltv/superawesome/sdk/views/SAInterstitialAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
