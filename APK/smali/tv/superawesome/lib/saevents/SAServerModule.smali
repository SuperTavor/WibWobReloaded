.class public Ltv/superawesome/lib/saevents/SAServerModule;
.super Ljava/lang/Object;


# instance fields
.field private clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

.field private impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

.field private sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

.field private sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

.field private sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

.field private sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

.field private viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAClickEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAClickEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAImpressionEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAPGFailEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    new-instance v0, Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    invoke-direct {v0, p1, p2, p3}, Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    return-void
.end method


# virtual methods
.method public getClickEvent()Ltv/superawesome/lib/saevents/events/SAClickEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

    return-object v0
.end method

.method public getImpressionEvent()Ltv/superawesome/lib/saevents/events/SAImpressionEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    return-object v0
.end method

.method public getSapgCloseEvent()Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    return-object v0
.end method

.method public getSapgFailEvent()Ltv/superawesome/lib/saevents/events/SAPGFailEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    return-object v0
.end method

.method public getSapgOpenEvent()Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    return-object v0
.end method

.method public getSapgSuccessEvent()Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    return-object v0
.end method

.method public getViewableImpressionEvent()Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    return-object v0
.end method

.method public triggerClickEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->clickEvent:Ltv/superawesome/lib/saevents/events/SAClickEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAClickEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerImpressionEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->impressionEvent:Ltv/superawesome/lib/saevents/events/SAImpressionEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAImpressionEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgCloseEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgCloseEvent:Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAPGCloseEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgFailEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgFailEvent:Ltv/superawesome/lib/saevents/events/SAPGFailEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAPGFailEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgOpenEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgOpenEvent:Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAPGOpenEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerPgSuccessEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->sapgSuccessEvent:Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAPGSuccessEvent;->triggerEvent()V

    :cond_0
    return-void
.end method

.method public triggerViewableImpressionEvent()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAServerModule;->viewableImpressionEvent:Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/events/SAViewableImpressionEvent;->triggerEvent()V

    :cond_0
    return-void
.end method
