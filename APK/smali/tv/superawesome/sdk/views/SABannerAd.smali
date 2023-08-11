.class public Ltv/superawesome/sdk/views/SABannerAd;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Ltv/superawesome/sdk/views/SAParentalGateInterface;


# static fields
.field private static final webPlayerTag:Ljava/lang/String; = "SA_WebPlayer"


# instance fields
.field private final BANNER_BACKGROUND:I

.field private ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field private canPlay:Z

.field private events:Ltv/superawesome/lib/saevents/SAEvents;

.field private firstPlay:Z

.field private gate:Ltv/superawesome/sdk/views/SAParentalGate;

.field private isClosed:Z

.field private isParentalGateEnabled:Z

.field private listener:Ltv/superawesome/sdk/views/SAInterface;

.field private loader:Ltv/superawesome/lib/saadloader/SALoader;

.field private padlock:Landroid/widget/ImageButton;

.field private session:Ltv/superawesome/lib/sasession/SASession;

.field private webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/superawesome/sdk/views/SABannerAd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/superawesome/sdk/views/SABannerAd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v0, 0xe0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->BANNER_BACKGROUND:I

    iput-boolean v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->isParentalGateEnabled:Z

    new-instance v0, Ltv/superawesome/sdk/views/SABannerAd$1;

    invoke-direct {v0, p0}, Ltv/superawesome/sdk/views/SABannerAd$1;-><init>(Ltv/superawesome/sdk/views/SABannerAd;)V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    iput-boolean v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->canPlay:Z

    iput-boolean v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->firstPlay:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->isClosed:Z

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ltv/superawesome/lib/sasession/SASession;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v0, Ltv/superawesome/lib/saadloader/SALoader;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/saadloader/SALoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->loader:Ltv/superawesome/lib/saadloader/SALoader;

    new-instance v0, Ltv/superawesome/lib/saevents/SAEvents;

    invoke-direct {v0}, Ltv/superawesome/lib/saevents/SAEvents;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultBgColor()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setColor(Z)V

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultParentalGate()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setParentalGate(Z)V

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/SuperAwesome;->defaultTestMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setTestMode(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sasession/SASession;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    return-object v0
.end method

.method static synthetic access$102(Ltv/superawesome/sdk/views/SABannerAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->canPlay:Z

    return p1
.end method

.method static synthetic access$200(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAInterface;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-object v0
.end method

.method static synthetic access$300(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saadloader/SALoader;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->loader:Ltv/superawesome/lib/saadloader/SALoader;

    return-object v0
.end method

.method static synthetic access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    return-object v0
.end method

.method static synthetic access$500(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saevents/SAEvents;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    return-object v0
.end method

.method static synthetic access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    return-object v0
.end method

.method static synthetic access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->padlock:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$702(Ltv/superawesome/sdk/views/SABannerAd;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->padlock:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$800(Ltv/superawesome/sdk/views/SABannerAd;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->isParentalGateEnabled:Z

    return v0
.end method

.method static synthetic access$900(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object v0
.end method

.method static synthetic access$902(Ltv/superawesome/sdk/views/SABannerAd;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->gate:Ltv/superawesome/sdk/views/SAParentalGate;

    return-object p1
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 4

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

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClicked:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v0}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerClickEvent()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&referrer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

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

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public close()V
    .locals 3

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    :goto_0
    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v1, v0, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->padlock:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->padlock:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->isClosed:Z

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->unregisterDisplayMoatEvent()Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public disableParentalGate()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setParentalGate(Z)V

    return-void
.end method

.method public disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setTestMode(Z)V

    return-void
.end method

.method public enableParentalGate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setParentalGate(Z)V

    return-void
.end method

.method public enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setTestMode(Z)V

    return-void
.end method

.method public hasAdAvailable()Z
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->isClosed:Z

    return v0
.end method

.method public load(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->canPlay:Z

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->firstPlay:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->close()V

    :cond_0
    iput-boolean v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->isClosed:Z

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-static {}, Ltv/superawesome/sdk/SuperAwesome;->getInstance()Ltv/superawesome/sdk/SuperAwesome;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/sdk/SuperAwesome;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sasession/SASession;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v1, Ltv/superawesome/sdk/views/SABannerAd$2;

    invoke-direct {v1, p0, p1}, Ltv/superawesome/sdk/views/SABannerAd$2;-><init>(Ltv/superawesome/sdk/views/SABannerAd;I)V

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sasession/SASession;->prepareSession(Ltv/superawesome/lib/sasession/SASessionInterface;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v0, "ad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-direct {v0, v2}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    move-object p1, v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "superState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ad"

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>()V

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public parentalGateCancel(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgCloseEvent()V

    return-void
.end method

.method public parentalGateFailure(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgFailEvent()V

    return-void
.end method

.method public parentalGateOpen(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgOpenEvent()V

    return-void
.end method

.method public parentalGateSuccess(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerPgSuccessEvent()V

    invoke-virtual {p0, p2}, Ltv/superawesome/sdk/views/SABannerAd;->click(Ljava/lang/String;)V

    return-void
.end method

.method public play(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->canPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->isClosed:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Ltv/superawesome/sdk/views/SABannerAd;->canPlay:Z

    iput-boolean v4, p0, Ltv/superawesome/sdk/views/SABannerAd;->firstPlay:Z

    new-instance v0, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    invoke-direct {v0}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    invoke-virtual {v0, v1, v2}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->setContentSize(II)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    new-instance v1, Ltv/superawesome/sdk/views/SABannerAd$3;

    invoke-direct {v1, p0, p1}, Ltv/superawesome/sdk/views/SABannerAd$3;-><init>(Ltv/superawesome/sdk/views/SABannerAd;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->setEventListener(Ltv/superawesome/lib/sawebplayer/SAWebPlayerEventInterface;)V

    :try_start_0
    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->getId()I

    move-result v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd;->webPlayer:Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    const-string v3, "SA_WebPlayer"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v4, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v4, v1}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0
.end method

.method public setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V
    .locals 4

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->events:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {p0}, Ltv/superawesome/sdk/views/SABannerAd;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SABannerAd;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {v0, v1, v2, v3}, Ltv/superawesome/lib/saevents/SAEvents;->setAd(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    return-void
.end method

.method public setColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->BANNER_BACKGROUND:I

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setColorGray()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setColor(Z)V

    return-void
.end method

.method public setColorTransparent()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setColor(Z)V

    return-void
.end method

.method public setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v0, p1}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public setConfigurationProduction()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public setConfigurationStaging()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {p0, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public setListener(Ltv/superawesome/sdk/views/SAInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    return-void

    :cond_0
    iget-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->listener:Ltv/superawesome/sdk/views/SAInterface;

    goto :goto_0
.end method

.method public setParentalGate(Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/sdk/views/SABannerAd;->isParentalGateEnabled:Z

    return-void
.end method

.method public setTestMode(Z)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd;->session:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v0, p1}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    return-void
.end method
