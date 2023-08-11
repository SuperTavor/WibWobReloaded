.class public Ltv/superawesome/lib/saevents/SAEvents;
.super Ljava/lang/Object;


# instance fields
.field private moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

.field private serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

.field private vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

.field private viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkViewableStatusForDisplay(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-virtual {v0, p1, p2}, Ltv/superawesome/lib/saevents/SAViewableModule;->checkViewableStatusForDisplay(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    :cond_0
    return-void
.end method

.method public checkViewableStatusForVideo(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-virtual {v0, p1, p2}, Ltv/superawesome/lib/saevents/SAViewableModule;->checkViewableStatusForVideo(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    :cond_0
    return-void
.end method

.method public disableMoatLimiting()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAMoatModule;->disableMoatLimiting()V

    :cond_0
    return-void
.end method

.method public getMoatModule()Ltv/superawesome/lib/saevents/SAMoatModule;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    return-object v0
.end method

.method public getServerModule()Ltv/superawesome/lib/saevents/SAServerModule;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    return-object v0
.end method

.method public getVASTClickThroughEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->getVASTClickThroughEvent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVastModule()Ltv/superawesome/lib/saevents/SAVASTModule;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    return-object v0
.end method

.method public getViewableModule()Ltv/superawesome/lib/saevents/SAViewableModule;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    return-object v0
.end method

.method public registerDisplayMoatEvent(Landroid/app/Activity;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-virtual {v0, p1, p2}, Ltv/superawesome/lib/saevents/SAMoatModule;->registerDisplayMoatEvent(Landroid/app/Activity;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public registerVideoMoatEvent(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)Z
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-virtual {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/SAMoatModule;->registerVideoMoatEvent(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAd(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-direct {v0, p1, p3, p2}, Ltv/superawesome/lib/saevents/SAServerModule;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    new-instance v0, Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-direct {v0, p1, p3}, Ltv/superawesome/lib/saevents/SAVASTModule;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    new-instance v0, Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-direct {v0, p3}, Ltv/superawesome/lib/saevents/SAMoatModule;-><init>(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    new-instance v0, Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-direct {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    return-void
.end method

.method public triggerClickEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerClickEvent()V

    :cond_0
    return-void
.end method

.method public triggerImpressionEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerImpressionEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgCloseEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerPgCloseEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgFailEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerPgFailEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgOpenEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerPgOpenEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgSuccessEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerPgSuccessEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTClickThroughEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVastClickThroughEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTClickTrackingEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTClickTrackingEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTCompleteEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTCompleteEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTCreativeViewEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTCreativeViewEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTErrorEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTErrorEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTFirstQuartileEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTFirstQuartileEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTImpressionEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTImpressionEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTMidpointEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTMidpointEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTStartEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTStartEvent()V

    :cond_0
    return-void
.end method

.method public triggerVASTThirdQuartileEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAVASTModule;->triggerVASTThirdQuartileEvent()V

    :cond_0
    return-void
.end method

.method public triggerViewableImpressionEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAServerModule;->triggerViewableImpressionEvent()V

    :cond_0
    return-void
.end method

.method public unregisterDisplayMoatEvent()Z
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAMoatModule;->unregisterDisplayMoatEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterVideoMoatEvent()Z
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAMoatModule;->unregisterVideoMoatEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsetAd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->serverModule:Ltv/superawesome/lib/saevents/SAServerModule;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->vastModule:Ltv/superawesome/lib/saevents/SAVASTModule;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->moatModule:Ltv/superawesome/lib/saevents/SAMoatModule;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAEvents;->viewableModule:Ltv/superawesome/lib/saevents/SAViewableModule;

    return-void
.end method
