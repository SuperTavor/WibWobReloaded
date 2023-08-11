.class public Ltv/superawesome/sdk/views/SAVideoAd;
.super Landroid/app/Activity;

# interfaces
.implements Ltv/superawesome/sdk/views/SAParentalGateInterface;


# static fields
.field private static ads:Ljava/util/HashMap; = null

.field private static configuration:Ltv/superawesome/lib/sasession/SAConfiguration; = null

.field private static isBackButtonEnabled:Z = false

.field private static isParentalGateEnabled:Z = false

.field private static isTestingEnabled:Z = false

.field private static listener:Ltv/superawesome/sdk/views/SAInterface; = null

.field private static orientation:Ltv/superawesome/sdk/views/SAOrientation; = null

.field private static session:Ltv/superawesome/lib/sasession/SASession; = null

.field private static shouldAutomaticallyCloseAtEnd:Z = false

.field private static shouldShowCloseButton:Z = false

.field private static shouldShowSmallClickButton:Z = false

.field private static final videoTag:Ljava/lang/String; = "SAVideoTag"


# instance fields
.field private ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field private closeButton:Landroid/widget/ImageButton;

.field private events:Ltv/superawesome/lib/saevents/SAEvents;

.field private gate:Ltv/superawesome/sdk/views/SAParentalGate;

.field private padlock:Landroid/widget/ImageButton;

.field private parent:Landroid/widget/RelativeLayout;

.field private videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    new-instance v0, Ltv/superawesome/sdk/views/SAVideoAd$1;

    invoke-direct {v0}, Ltv/superawesome/sdk/views/SAVideoAd$1;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultParentalGate()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isParentalGateEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultCloseButton()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowCloseButton:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultCloseAtEnd()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldAutomaticallyCloseAtEnd:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultSmallClick()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowSmallClickButton:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultTestMode()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isTestingEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultBackButton()Z

    move-result v0

    sput-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isBackButtonEnabled:Z

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultOrientation()Ltv/superawesome/sdk/views/SAOrientation;

    move-result-object v0

    sput-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v0

    sput-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/sdk/views/SAVideoAd;)V
    .locals 0

    invoke-direct {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->close()V

    return-void
.end method

.method static synthetic access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    return-object v0
.end method

.method static synthetic access$1000()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method static synthetic access$200(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    return-object v0
.end method

.method static synthetic access$300(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    return-object v0
.end method

.method static synthetic access$700(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object v0
.end method

.method static synthetic access$702(Ltv/superawesome/sdk/views/SAVideoAd;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object p1
.end method

.method static synthetic access$800()Ltv/superawesome/lib/sasession/SASession;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    return-object v0
.end method

.method private close()V
    .locals 3

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-virtual {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->unregisterVideoMoatEvent()Z

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    invoke-virtual {v0}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->close()V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->finish()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setRequestedOrientation(I)V

    return-void
.end method

.method public static disableBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setBackButton(Z)V

    return-void
.end method

.method public static disableCloseAtEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setCloseAtEnd(Z)V

    return-void
.end method

.method public static disableCloseButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setCloseButton(Z)V

    return-void
.end method

.method public static disableParentalGate()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setParentalGate(Z)V

    return-void
.end method

.method public static disableSmallClickButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setSmallClick(Z)V

    return-void
.end method

.method public static disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setTestMode(Z)V

    return-void
.end method

.method public static enableBackButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setBackButton(Z)V

    return-void
.end method

.method public static enableCloseAtEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setCloseAtEnd(Z)V

    return-void
.end method

.method public static enableCloseButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setCloseButton(Z)V

    return-void
.end method

.method public static enableParentalGate()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setParentalGate(Z)V

    return-void
.end method

.method public static enableSmallClickButton()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setSmallClick(Z)V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setTestMode(Z)V

    return-void
.end method

.method private static getConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method

.method private static getIsBackButtonEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isBackButtonEnabled:Z

    return v0
.end method

.method private static getIsParentalGateEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isParentalGateEnabled:Z

    return v0
.end method

.method private static getIsTestEnabled()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->isTestingEnabled:Z

    return v0
.end method

.method private static getListener()Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method private static getOrientation()Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    return-object v0
.end method

.method private static getShouldAutomaticallyCloseAtEnd()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldAutomaticallyCloseAtEnd:Z

    return v0
.end method

.method private static getShouldShowCloseButton()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowCloseButton:Z

    return v0
.end method

.method private static getShouldShowSmallClickButton()Z
    .locals 1

    sget-boolean v0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowSmallClickButton:Z

    return v0
.end method

.method public static hasAdAvailable(I)Z
    .locals 2

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

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

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ltv/superawesome/lib/saadloader/SALoader;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/saadloader/SALoader;-><init>(Landroid/content/Context;)V

    new-instance v1, Ltv/superawesome/lib/sasession/SASession;

    invoke-direct {v1, p1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v1, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-boolean v2, Ltv/superawesome/sdk/views/SAVideoAd;->isTestingEnabled:Z

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    sget-object v1, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    sget-object v2, Ltv/superawesome/sdk/views/SAVideoAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/sdk/SuperAwesome;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->setVersion(Ljava/lang/String;)V

    sget-object v1, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v2, Ltv/superawesome/sdk/views/SAVideoAd$6;

    invoke-direct {v2, v0, p0}, Ltv/superawesome/sdk/views/SAVideoAd$6;-><init>(Ltv/superawesome/lib/saadloader/SALoader;I)V

    invoke-virtual {v1, v2}, Ltv/superawesome/lib/sasession/SASession;->prepareSession(Ltv/superawesome/lib/sasession/SASessionInterface;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public static play(ILandroid/content/Context;)V
    .locals 3

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

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

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltv/superawesome/sdk/views/SAVideoAd;

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
    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, p0, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

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

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd;->ads:Ljava/util/HashMap;

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setBackButton(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->isBackButtonEnabled:Z

    return-void
.end method

.method public static setCloseAtEnd(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldAutomaticallyCloseAtEnd:Z

    return-void
.end method

.method public static setCloseButton(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowCloseButton:Z

    return-void
.end method

.method public static setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    .locals 0

    sput-object p0, Ltv/superawesome/sdk/views/SAVideoAd;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method public static setConfigurationProduction()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setConfigurationStaging()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public static setListener(Ltv/superawesome/sdk/views/SAInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    sput-object p0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-void

    :cond_0
    sget-object p0, Ltv/superawesome/sdk/views/SAVideoAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    goto :goto_0
.end method

.method public static setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V
    .locals 0

    sput-object p0, Ltv/superawesome/sdk/views/SAVideoAd;->orientation:Ltv/superawesome/sdk/views/SAOrientation;

    return-void
.end method

.method public static setOrientationAny()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setOrientationLandscape()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setOrientationPortrait()V
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->setOrientation(Ltv/superawesome/sdk/views/SAOrientation;)V

    return-void
.end method

.method public static setParentalGate(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->isParentalGateEnabled:Z

    return-void
.end method

.method public static setSmallClick(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->shouldShowSmallClickButton:Z

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    sput-boolean p0, Ltv/superawesome/sdk/views/SAVideoAd;->isTestingEnabled:Z

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to go to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClicked:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTClickTrackingEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTClickThroughEvent()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&referrer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->writeToReferralQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Ltv/superawesome/sdk/views/SAVideoAd;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getIsBackButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/high16 v11, 0x41f00000    # 30.0f

    const/4 v8, -0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getListener()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getIsParentalGateEnabled()Z

    move-result v1

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getShouldShowCloseButton()Z

    move-result v2

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getShouldAutomaticallyCloseAtEnd()Z

    move-result v3

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getShouldShowSmallClickButton()Z

    move-result v4

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->getOrientation()Ltv/superawesome/sdk/views/SAOrientation;

    move-result-object v5

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ad"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-static {v6}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v7, v6}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v7, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    sget-object v6, Ltv/superawesome/sdk/views/SAVideoAd$7;->$SwitchMap$tv$superawesome$sdk$views$SAOrientation:[I

    invoke-virtual {v5}, Ltv/superawesome/sdk/views/SAOrientation;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    new-instance v5, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-direct {v5}, Ltv/superawesome/lib/saevents/SAEvents;-><init>()V

    iput-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    sget-object v6, Ltv/superawesome/sdk/views/SAVideoAd;->session:Ltv/superawesome/lib/sasession/SASession;

    iget-object v7, p0, Ltv/superawesome/sdk/views/SAVideoAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {v5, p0, v6, v7}, Ltv/superawesome/lib/saevents/SAEvents;->setAd(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    const v6, 0xf4240

    const v7, 0x16e360

    invoke-static {v6, v7}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Ltv/superawesome/sdk/views/SAVideoAd;->setContentView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createPadlockBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p0}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v5

    iget-object v6, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v8, 0x42a60000    # 83.0f

    mul-float/2addr v8, v5

    float-to-int v8, v8

    const/high16 v9, 0x41f80000    # 31.0f

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-direct {v7, v8, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->padlock:Landroid/widget/ImageButton;

    new-instance v6, Ltv/superawesome/sdk/views/SAVideoAd$2;

    invoke-direct {v6, p0}, Ltv/superawesome/sdk/views/SAVideoAd$2;-><init>(Ltv/superawesome/sdk/views/SAVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p0}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v7, v11, v5

    float-to-int v7, v7

    mul-float/2addr v5, v11

    float-to-int v5, v5

    invoke-direct {v6, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Ltv/superawesome/sdk/views/SAVideoAd;->closeButton:Landroid/widget/ImageButton;

    new-instance v6, Ltv/superawesome/sdk/views/SAVideoAd$3;

    invoke-direct {v6, p0}, Ltv/superawesome/sdk/views/SAVideoAd$3;-><init>(Ltv/superawesome/sdk/views/SAVideoAd;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SAVideoTag"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    invoke-direct {v6}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;-><init>()V

    iput-object v6, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    iget-object v6, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    invoke-virtual {v6, v4}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->setShouldShowSmallClickButton(Z)V

    iget-object v4, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    new-instance v6, Ltv/superawesome/sdk/views/SAVideoAd$4;

    invoke-direct {v6, p0, v2, v0, v3}, Ltv/superawesome/sdk/views/SAVideoAd$4;-><init>(Ltv/superawesome/sdk/views/SAVideoAd;ZLtv/superawesome/sdk/views/SAInterface;Z)V

    invoke-virtual {v4, v6}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->setEventListener(Ltv/superawesome/lib/savideoplayer/SAVideoPlayerEventInterface;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    new-instance v2, Ltv/superawesome/sdk/views/SAVideoAd$5;

    invoke-direct {v2, p0, v1}, Ltv/superawesome/sdk/views/SAVideoAd$5;-><init>(Ltv/superawesome/sdk/views/SAVideoAd;Z)V

    invoke-virtual {v0, v2}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->setClickListener(Ltv/superawesome/lib/savideoplayer/SAVideoPlayerClickInterface;)V

    :try_start_0
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd;->parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    const-string v3, "SAVideoTag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0, v8}, Ltv/superawesome/sdk/views/SAVideoAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ltv/superawesome/sdk/views/SAVideoAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v10}, Ltv/superawesome/sdk/views/SAVideoAd;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "SAVideoTag"

    invoke-virtual {v5, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parentalGateCancel(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgCloseEvent()V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->resume()V

    return-void
.end method

.method public parentalGateFailure(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgFailEvent()V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->resume()V

    return-void
.end method

.method public parentalGateOpen(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgOpenEvent()V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->pause()V

    return-void
.end method

.method public parentalGateSuccess(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgSuccessEvent()V

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SAVideoAd;->pause()V

    invoke-virtual {p0, p2}, Ltv/superawesome/sdk/views/SAVideoAd;->click(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    invoke-virtual {v0}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->pausePlayer()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd;->videoPlayer:Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    invoke-virtual {v0}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->resumePlayer()V

    return-void
.end method
