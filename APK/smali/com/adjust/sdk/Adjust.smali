.class public Lcom/adjust/sdk/Adjust;
.super Ljava/lang/Object;


# static fields
.field private static defaultInstance:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appWillOpenUrl(Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->appWillOpenUrl(Landroid/net/Uri;)V

    return-void
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;
    .locals 2

    const-class v1, Lcom/adjust/sdk/Adjust;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adjust/sdk/AdjustInstance;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustInstance;-><init>()V

    sput-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    :cond_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    return-void
.end method

.method public static onPause()V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onPause()V

    return-void
.end method

.method public static onResume()V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onResume()V

    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setEnabled(Z)V

    return-void
.end method

.method public static setOfflineMode(Z)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setOfflineMode(Z)V

    return-void
.end method

.method public static setReferrer(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->sendReferrer(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method
