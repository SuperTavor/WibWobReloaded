.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;


# instance fields
.field private activityHandler:Lcom/adjust/sdk/ActivityHandler;

.field private referrer:Ljava/lang/String;

.field private referrerClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkActivityHandler()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    iput-wide v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    invoke-static {p1}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onResume()V

    goto :goto_0
.end method

.method public sendReferrer(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    iput-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOfflineMode(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setOfflineMode(Z)V

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method
