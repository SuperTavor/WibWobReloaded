.class public Ltv/superawesome/lib/saevents/SAVASTModule;
.super Ljava/lang/Object;


# instance fields
.field private vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

.field private vastClickTracking:Ljava/util/List;

.field private vastComplete:Ljava/util/List;

.field private vastCreativeView:Ljava/util/List;

.field private vastError:Ljava/util/List;

.field private vastFirstQuartile:Ljava/util/List;

.field private vastImpression:Ljava/util/List;

.field private vastMidpoint:Ljava/util/List;

.field private vastStart:Ljava/util/List;

.field private vastThirdQuartile:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastError:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastImpression:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastCreativeView:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastStart:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastFirstQuartile:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastMidpoint:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastThirdQuartile:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastComplete:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickTracking:Ljava/util/List;

    :try_start_0
    iget-object v0, p2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;

    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_click_through"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v3, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    :cond_1
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastError:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_impression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastImpression:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_creativeView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastCreativeView:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastStart:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_firstQuartile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastFirstQuartile:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_midpoint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastMidpoint:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_thirdQuartile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastThirdQuartile:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_complete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastComplete:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    const-string v3, "vast_click_tracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickTracking:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    invoke-direct {v3, p1, v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_a
    return-void
.end method


# virtual methods
.method public getVASTClickThroughEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVastClickThrough()Ltv/superawesome/lib/saevents/events/SAURLEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    return-object v0
.end method

.method public getVastClickTracking()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickTracking:Ljava/util/List;

    return-object v0
.end method

.method public getVastComplete()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastComplete:Ljava/util/List;

    return-object v0
.end method

.method public getVastCreativeView()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastCreativeView:Ljava/util/List;

    return-object v0
.end method

.method public getVastError()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastError:Ljava/util/List;

    return-object v0
.end method

.method public getVastFirstQuartile()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastFirstQuartile:Ljava/util/List;

    return-object v0
.end method

.method public getVastImpression()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastImpression:Ljava/util/List;

    return-object v0
.end method

.method public getVastMidpoint()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastMidpoint:Ljava/util/List;

    return-object v0
.end method

.method public getVastStart()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastStart:Ljava/util/List;

    return-object v0
.end method

.method public getVastThirdQuartile()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastThirdQuartile:Ljava/util/List;

    return-object v0
.end method

.method public triggerVASTClickTrackingEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickTracking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTCompleteEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastComplete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTCreativeViewEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastCreativeView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTErrorEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastError:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTFirstQuartileEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastFirstQuartile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTImpressionEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastImpression:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTMidpointEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastMidpoint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTStartEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastStart:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVASTThirdQuartileEvent()V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastThirdQuartile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public triggerVastClickThroughEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAVASTModule;->vastClickThrough:Ltv/superawesome/lib/saevents/events/SAURLEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAURLEvent;->triggerEvent()V

    :cond_0
    return-void
.end method
