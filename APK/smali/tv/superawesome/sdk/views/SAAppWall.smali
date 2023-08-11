.class public Ltv/superawesome/sdk/views/SAAppWall;
.super Landroid/app/Activity;

# interfaces
.implements Ltv/superawesome/sdk/views/SAParentalGateInterface;


# static fields
.field private static configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

.field private static isBackButtonEnabled:Z

.field private static isParentalGateEnabled:Z

.field private static isTestingEnabled:Z

.field private static listener:Ltv/superawesome/sdk/views/SAInterface;

.field private static responses:Ljava/util/HashMap;

.field private static session:Ltv/superawesome/lib/sasession/SASession;


# instance fields
.field private events:Ljava/util/List;

.field private gate:Ltv/superawesome/sdk/views/SAParentalGate;

.field private response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    new-instance v0, Ltv/superawesome/sdk/views/SAAppWall$1;

    invoke-direct {v0}, Ltv/superawesome/sdk/views/SAAppWall$1;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultParentalGate()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isParentalGateEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultTestMode()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isTestingEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultBackButton()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isBackButtonEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v0

    sput-object v0, Ltv/superawesome/sdk/views/SAAppWall;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/sdk/views/SAAppWall;)V
    .locals 0

    invoke-direct {p0}, Ltv/superawesome/sdk/views/SAAppWall;->close()V

    return-void
.end method

.method static synthetic access$100(Ltv/superawesome/sdk/views/SAAppWall;)Ltv/superawesome/lib/samodelspace/saad/SAResponse;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    return-object v0
.end method

.method static synthetic access$200(Ltv/superawesome/sdk/views/SAAppWall;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object v0
.end method

.method static synthetic access$202(Ltv/superawesome/sdk/views/SAAppWall;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAAppWall;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object p1
.end method

.method static synthetic access$300()Ltv/superawesome/lib/sasession/SASession;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method private close()V
    .locals 3

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAAppWall;->finish()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SAAppWall;->setRequestedOrientation(I)V

    return-void
.end method

.method public static disableBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setBackButton(Z)V

    return-void
.end method

.method public static disableParentalGate()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setParentalGate(Z)V

    return-void
.end method

.method public static disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setTestMode(Z)V

    return-void
.end method

.method public static enableBackButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setBackButton(Z)V

    return-void
.end method

.method public static enableParentalGate()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setParentalGate(Z)V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setTestMode(Z)V

    return-void
.end method

.method private static getConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method

.method private static getIsBackButtonEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isBackButtonEnabled:Z

    return v0
.end method

.method private static getIsParentalGateEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isParentalGateEnabled:Z

    return v0
.end method

.method private static getIsTestEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAAppWall;->isTestingEnabled:Z

    return v0
.end method

.method private static getListener()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method public static hasAdAvailable(I)Z
    .locals 2

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;

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

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ltv/superawesome/lib/saadloader/SALoader;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/saadloader/SALoader;-><init>(Landroid/content/Context;)V

    new-instance v1, Ltv/superawesome/lib/sasession/SASession;

    invoke-direct {v1, p1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v1, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-boolean v2, Ltv/superawesome/sdk/views/SAAppWall;->isTestingEnabled:Z

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    sget-object v1, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v2, Ltv/superawesome/sdk/views/SAAppWall;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/sdk/SuperAwesome;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setVersion(Ljava/lang/String;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v2, Ltv/superawesome/sdk/views/SAAppWall$6;

    invoke-direct {v2, v0, p0}, Ltv/superawesome/sdk/views/SAAppWall$6;-><init>(Ltv/superawesome/lib/saadloader/SALoader;I)V

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->prepareSession(Ltv/superawesome/lib/sasession/SASessionInterface;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public static play(ILandroid/content/Context;)V
    .locals 3

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    if-eqz v1, :cond_1

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltv/superawesome/sdk/views/SAAppWall;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "response"

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public static setBackButton(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAAppWall;->isBackButtonEnabled:Z

    return-void
.end method

.method public static setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    .locals 0

    sput-object p0, Ltv/superawesome/sdk/views/SAAppWall;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public static setConfigurationProduction()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setConfigurationStaging()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setListener(Ltv/superawesome/sdk/views/SAInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    sput-object p0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-void

    :cond_0
    sget-object p0, Ltv/superawesome/sdk/views/SAAppWall;->listener:Ltv/superawesome/sdk/views/SAInterface;

    goto :goto_0
.end method

.method public static setParentalGate(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAAppWall;->isParentalGateEnabled:Z

    return-void
.end method

.method public static setResponse(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAAppWall;->responses:Ljava/util/HashMap;

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAAppWall;->isTestingEnabled:Z

    return-void
.end method


# virtual methods
.method public click(ILjava/lang/String;)V
    .locals 5

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to go to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    sget-object v4, Ltv/superawesome/sdk/views/SAEvent;->adClicked:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v2, v3, v4}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    sget-object v2, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    if-eqz v2, :cond_0

    sget-object v2, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v2}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ltv/superawesome/lib/saevents/SAEvents;->triggerClickEvent()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&referrer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->writeToReferralQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Ltv/superawesome/sdk/views/SAAppWall;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getIsBackButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/high16 v13, 0x42d60000    # 107.0f

    const/high16 v12, 0x41900000    # 18.0f

    const/high16 v11, 0x40e00000    # 7.0f

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v1

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->getIsParentalGateEnabled()Z

    move-result v2

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAAppWall;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v3, v0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    new-instance v4, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-direct {v4}, Ltv/superawesome/lib/saevents/SAEvents;-><init>()V

    sget-object v5, Ltv/superawesome/sdk/views/SAAppWall;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v4, p0, v5, v0}, Ltv/superawesome/lib/saevents/SAEvents;->setAd(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v3

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, -0xffff01

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Ltv/superawesome/sdk/views/SAAppWall;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createAppWallBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v6, v3, v13

    float-to-int v6, v6

    invoke-direct {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createAppWallHeaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createAppWallTitleBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v7, v3

    float-to-int v7, v7

    const/high16 v8, 0x42200000    # 40.0f

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createPadlockBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42a60000    # 83.0f

    mul-float/2addr v7, v3

    float-to-int v7, v7

    const/high16 v8, 0x41f80000    # 31.0f

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Ltv/superawesome/sdk/views/SAAppWall$2;

    invoke-direct {v6, p0}, Ltv/superawesome/sdk/views/SAAppWall$2;-><init>(Ltv/superawesome/sdk/views/SAAppWall;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createAppWallCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v7, v12, v3

    float-to-int v7, v7

    mul-float v8, v12, v3

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-float v7, v3, v11

    float-to-int v7, v7

    mul-float v8, v3, v11

    float-to-int v8, v8

    invoke-virtual {v6, v9, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Ltv/superawesome/sdk/views/SAAppWall$3;

    invoke-direct {v6, p0}, Ltv/superawesome/sdk/views/SAAppWall$3;-><init>(Ltv/superawesome/sdk/views/SAAppWall;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v5, v5, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-direct {v0, p0, p0, v5}, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;-><init>(Ltv/superawesome/sdk/views/SAAppWall;Landroid/content/Context;Ljava/util/List;)V

    new-instance v5, Landroid/widget/GridView;

    invoke-direct {v5, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v5, v9}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-virtual {v5, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x3

    if-gt v0, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Ltv/superawesome/sdk/views/SAAppWall$4;

    invoke-direct {v0, p0, v2}, Ltv/superawesome/sdk/views/SAAppWall$4;-><init>(Ltv/superawesome/sdk/views/SAAppWall;Z)V

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-float v2, v3, v13

    float-to-int v2, v2

    invoke-virtual {v0, v9, v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/SAEvents;

    new-instance v3, Ltv/superawesome/sdk/views/SAAppWall$5;

    invoke-direct {v3, p0, v0}, Ltv/superawesome/sdk/views/SAAppWall$5;-><init>(Ltv/superawesome/sdk/views/SAAppWall;Ltv/superawesome/lib/saevents/SAEvents;)V

    invoke-virtual {v0, v5, v3}, Ltv/superawesome/lib/saevents/SAEvents;->checkViewableStatusForDisplay(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adShown:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v1, v0, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    return-void
.end method

.method public parentalGateCancel(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgCloseEvent()V

    return-void
.end method

.method public parentalGateFailure(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgFailEvent()V

    return-void
.end method

.method public parentalGateOpen(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgOpenEvent()V

    return-void
.end method

.method public parentalGateSuccess(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgSuccessEvent()V

    invoke-virtual {p0, p1, p2}, Ltv/superawesome/sdk/views/SAAppWall;->click(ILjava/lang/String;)V

    return-void
.end method
