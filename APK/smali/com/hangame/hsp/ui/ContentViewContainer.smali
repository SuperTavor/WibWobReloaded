.class public abstract Lcom/hangame/hsp/ui/ContentViewContainer;
.super Lcom/hangame/hsp/ui/BaseViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentViewContainer"


# instance fields
.field private final mPreviousView:Lcom/hangame/hsp/ui/HSPUiUri;

.field private final mResult:Ljava/util/Map;

.field private final mReturnViewAction:Ljava/lang/String;

.field private final mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method protected constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    invoke-direct {p0}, Lcom/hangame/hsp/ui/BaseViewContainer;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mResult:Ljava/util/Map;

    iput-object p1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mPreviousView:Lcom/hangame/hsp/ui/HSPUiUri;

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v1, "returnView"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mReturnViewAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v1, "returnView"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getTopbarColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setTopBarColor(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final addResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "addResult()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mResult:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final closeAllView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "closeAllView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final closeView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "closeView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeCurrentView()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mPreviousView:Lcom/hangame/hsp/ui/HSPUiUri;

    return-object v0
.end method

.method final getResult()Ljava/util/Map;
    .locals 2

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mResult:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final getReturnViewAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mReturnViewAction:Ljava/lang/String;

    return-object v0
.end method

.method protected final getTitle()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "getTitle()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->getTitle()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    return-object v0
.end method

.method final handleCloseView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "handleCloseView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->handlePauseView()V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onClose()V

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->enableSuspend()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handleCreateView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "handleCreateView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onCreate()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handleInitView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "handleInitView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->NOT_INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handlePauseView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "handlePauseView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onPause()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handleResumeView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "handleResumeView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->setState(Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onResume()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final hideGnb()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "hideGnb()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->hideGnb()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v2, "_gnbShow"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final hideTopBar()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "hideTopBar()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->hideTopBar()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v2, "_topbarShow"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final isShowGnb()Z
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "isShowGnb()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->isShowGnb()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final isShowTopBar()Z
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "isShowTopBar()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->isShowTopBar()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onBackButtonPressed()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "onBackButtonPressed()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->isFirstView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hsp.common.backtogame"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/ui/ContentViewContainer$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/ui/ContentViewContainer$1;-><init>(Lcom/hangame/hsp/ui/ContentViewContainer;)V

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->closeView()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onTopBarPressed()V
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v1, "ContentViewContainer"

    const-string v3, "onTopBarPressed()"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    const-string v1, "ContentViewContainer"

    const-string v2, "onTopBarPressed() 1"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    :goto_0
    monitor-exit v4

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    const-string v1, "ContentViewContainer"

    const-string v2, "onTopBarPressed() 2"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const-string v1, "ContentViewContainer"

    const-string v3, "onTopBarPressed() 3"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ScrollView;

    if-eqz v6, :cond_3

    const-string v1, "ContentViewContainer"

    const-string v3, "onTopBarPressed() 4"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    check-cast v0, Landroid/widget/ScrollView;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    monitor-exit v4

    goto :goto_1

    :cond_3
    instance-of v6, v2, Landroid/widget/ListView;

    if-eqz v6, :cond_4

    const-string v1, "ContentViewContainer"

    const-string v3, "onTopBarPressed() 5"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v2, Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2
.end method

.method protected final refreshContentView()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "refreshContentView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->refreshContentView()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "setTitle()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->setTitle(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setTopBarButtonView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "setTopBarButtonView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->setTopBarButtonView(Landroid/view/View;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setTopBarColor(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "setTopBarButtonView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->setTopbarColor(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "setView()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/hangame/hsp/ui/BaseViewContainer;->setView(Landroid/view/View;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->updateContentView()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/hangame/hsp/ui/BaseViewContainer;->setView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected final showGnb()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "showGnb()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->showGnb()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v2, "_gnbShow"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final showTopBar()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    const-string v2, "showTopBar()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mState:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->showTopBar()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->mUiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v2, "_topbarShow"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/ui/ContentViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ContentViewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
