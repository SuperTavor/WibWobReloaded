.class public final Lcom/hangame/hsp/ui/HSPUiActivity;
.super Landroid/app/Activity;


# static fields
.field private static final BUNDLE_KEY_FIRST_EXECUTE:Ljava/lang/String; = "FirstExecute"

.field private static final BUNDLE_KEY_ONLINE:Ljava/lang/String; = "Online"

.field private static final TAG:Ljava/lang/String; = "HSPUiActivity"

.field private static final lock:Ljava/lang/Object;

.field private static final sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mBackButtonEnabled:Z

.field private mIsFirstExecute:Z

.field private mIsOnline:Z

.field private mLoginLock:Lcom/hangame/hsp/util/MutexLock;

.field private mOrientation:I

.field private mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field private mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$UncaughtExceptionHandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hangame/hsp/ui/HSPUiActivity$UncaughtExceptionHandlerImpl;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity$1;)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity;->sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->INIT:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mBackButtonEnabled:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/util/MutexLock;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mLoginLock:Lcom/hangame/hsp/util/MutexLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hangame/hsp/ui/HSPUiActivity;Lcom/hangame/hsp/util/MutexLock;)Lcom/hangame/hsp/util/MutexLock;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mLoginLock:Lcom/hangame/hsp/util/MutexLock;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/hangame/hsp/ui/HSPUiActivity;Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;)Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    return-object p1
.end method


# virtual methods
.method disableBackButton()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mBackButtonEnabled:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enableBackButton()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mBackButtonEnabled:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->overridePendingTransition(II)V

    return-void
.end method

.method isShow()Z
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lockOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/MainViewContainer;->notifyActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->PAUSED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    if-ne v0, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    new-instance v2, Lcom/hangame/hsp/ui/HSPUiActivity$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/hangame/hsp/ui/HSPUiActivity$3;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->addUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBackPressed()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiActivity"

    const-string v2, "onBackPressed()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mBackButtonEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onBackButtonPressed()V

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiActivity"

    const-string v2, "onConfigurationChanged()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->updateOrientation(I)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mOrientation:I

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "HSPUiActivity"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v1}, Lcom/hangame/hsp/ui/HSPUiActivity;->overridePendingTransition(II)V

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v3

    iput-object v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v3}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "HSPUiActivity"

    const-string v1, "Activity Process restart"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiActivity;->requestDestroy()V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    sget-object v3, Lcom/hangame/hsp/ui/HSPUiActivity;->sUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/hangame/hsp/util/AndroidVersionUtil;->isHoneyCombAndAbove()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    if-eqz p1, :cond_5

    const-string v3, "FirstExecute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "FirstExecute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    :goto_1
    const-string v3, "Online"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "Online"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsOnline:Z

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onCreateActivity(Lcom/hangame/hsp/ui/HSPUiActivity;)V

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-ne v3, v4, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsOnline:Z

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-ne v3, v4, :cond_6

    :goto_4
    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsOnline:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiActivity"

    const-string v2, "onDestroy()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onDestroyActivity()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->DESTROYED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "HSPUiActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onPauseActivity()V

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isUseAutoSuspend()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HSPUiActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() autoSuspend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPConfiguration;->isUseAutoSuspend()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPCore;->suspend(Lcom/hangame/hsp/HSPCore$HSPSuspendCB;)V

    :cond_1
    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->PAUSED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->hideKeyboard()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onRestoreInstanceState(Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "HSPUiActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsOnline:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onResumeActivity()V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/util/MutexLock;->createLock(Ljava/lang/Object;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mLoginLock:Lcom/hangame/hsp/util/MutexLock;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/hangame/hsp/ui/HSPUiActivity$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/ui/HSPUiActivity$1;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/hangame/hsp/HSPCore;->login(Landroid/app/Activity;ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onResumeActivity()V

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HSPUiActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FirstExecute"

    iget-boolean v1, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsFirstExecute:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "Online"

    iget-boolean v1, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mIsOnline:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onSaveInstanceState(Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUserInteraction()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onUserInteraction()V

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

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onWindowFocusChanged(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method requestDestroy()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mUiLauncher:Lcom/hangame/hsp/ui/HSPUiLauncher;

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->REQUEST_DESTROY:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity;->mState:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/HSPUiActivity$2;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unlockOrientation()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->setRequestedOrientation(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
