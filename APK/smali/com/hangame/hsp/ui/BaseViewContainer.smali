.class abstract Lcom/hangame/hsp/ui/BaseViewContainer;
.super Ljava/lang/Object;


# instance fields
.field protected final lock:Ljava/lang/Object;

.field protected mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field protected mView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->NOT_INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    return-void
.end method


# virtual methods
.method protected final getState()Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;
    .locals 2

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mView:Landroid/view/View;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final isClosed()Z
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final isRunning()Z
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onClose()V
    .locals 0

    return-void
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    return-void
.end method

.method protected onRotate(I)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected final setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V
    .locals 2

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setView(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/BaseViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/hangame/hsp/ui/BaseViewContainer;->mView:Landroid/view/View;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
