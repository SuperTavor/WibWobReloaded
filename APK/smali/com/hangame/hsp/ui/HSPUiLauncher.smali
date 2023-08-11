.class public final Lcom/hangame/hsp/ui/HSPUiLauncher;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPUiLauncher"

.field private static final lock:Ljava/lang/Object;

.field private static mInstance:Lcom/hangame/hsp/ui/HSPUiLauncher;


# instance fields
.field private isFirstContentView:Z

.field private mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

.field private mIsLockScreenOrientationEvent:Z

.field private mIsRunningCloseAllView:Z

.field private mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

.field private mProcesslock:Lcom/hangame/hsp/util/MutexLock;

.field private final mUiEventListenerSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-direct {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;-><init>()V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mInstance:Lcom/hangame/hsp/ui/HSPUiLauncher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mProcesslock:Lcom/hangame/hsp/util/MutexLock;

    iput-boolean v1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    iput-boolean v1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsLockScreenOrientationEvent:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/ui/MainViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/ui/HSPUiActivity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/ui/HSPUiLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->handleDestroy()V

    return-void
.end method

.method static synthetic access$402(Lcom/hangame/hsp/ui/HSPUiLauncher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/util/MutexLock;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mProcesslock:Lcom/hangame/hsp/util/MutexLock;

    return-object v0
.end method

.method public static getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mInstance:Lcom/hangame/hsp/ui/HSPUiLauncher;

    return-object v0
.end method

.method static getLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HSPUiLauncher"

    const-string v1, "handleDestroy()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->onClose()V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->removeActivity()V

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->removeActivity()V

    iput-object v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    iput-object v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->CLOSE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V

    return-void
.end method

.method private launchActivity()V
    .locals 3

    const-string v0, "HSPUiLauncher"

    const-string v1, "launchActivity()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchView(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 4

    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRunningCloseAllView : before : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mProcesslock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->resetLock()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mProcesslock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRunningCloseAllView : after : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->clearHistory()V

    invoke-static {p1}, Lcom/hangame/hsp/ui/ViewHistoryManager;->push(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launchActivity()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/hangame/hsp/ui/ViewHistoryManager;->push(Lcom/hangame/hsp/ui/HSPUiUri;)V

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher$1;-><init>(Lcom/hangame/hsp/ui/HSPUiLauncher;Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "HSPUiLauncher"

    const-string v2, "HSPUiActivity is not created"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V
    .locals 5

    iget-object v1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUiEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiLauncher$3;->$SwitchMap$com$hangame$hsp$ui$HSPUiLauncher$UiEvent:[I

    invoke-virtual {p1}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    monitor-exit v1

    return-void

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;->onShow()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPUiLauncher"

    const-string v4, "HSPUiEventListener.onShow()"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;->onHide()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v3, "HSPUiLauncher"

    const-string v4, "HSPUiEventListener.onHide()"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;->onClose()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v3, "HSPUiLauncher"

    const-string v4, "HSPUiEventListener.onClose()"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v0, p2}, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;->onRotate(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    const-string v3, "HSPUiLauncher"

    const-string v4, "HSPUiEventListener.onRotate()"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-interface {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;->onUserInteraction()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_b
    const-string v3, "HSPUiLauncher"

    const-string v4, "HSPUiEventListener.onUserInteraction()"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "addUiEventListener(): "

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeAllView()V
    .locals 3

    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeAllView() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsRunningCloseAllView:Z

    :cond_0
    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/HSPUiLauncher$2;-><init>(Lcom/hangame/hsp/ui/HSPUiLauncher;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeCurrentView()V
    .locals 6

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeCurrentView() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->getContentView()Lcom/hangame/hsp/ui/ContentViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->getResult()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->pop()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :goto_0
    invoke-static {v3}, Lcom/hangame/hsp/ui/ViewEventManager;->notifyCloseViewEvent(Lcom/hangame/hsp/ui/HSPUiUri;)V

    :cond_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->pop()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    :goto_2
    const-string v4, "false"

    const-string v5, "_history"

    invoke-virtual {v0, v5}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    invoke-static {v3}, Lcom/hangame/hsp/ui/ViewEventManager;->notifyCloseViewEvent(Lcom/hangame/hsp/ui/HSPUiUri;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->pop()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/util/Map;)V

    const-string v2, "returnView"

    invoke-virtual {v3}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isFinishing()Z
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->isFinishing()Z

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

.method public isLockScreenOrientationEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsLockScreenOrientationEvent:Z

    return v0
.end method

.method public isShow()Z
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->isShow()Z

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

.method public launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPUiLauncher"

    const-string v1, "HSPUiUri is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UILAUNCHER"

    const-string v1, "HSPUiUri is null"

    invoke-static {v0, v3, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HSPUiLauncher"

    const-string v1, "HSPCore is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UILAUNCHER"

    const-string v1, "HSPCore is not initialized"

    invoke-static {v0, v3, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launchView(Lcom/hangame/hsp/ui/HSPUiUri;)V

    const-string v0, "UILAUNCHER"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method onBackButtonPressed()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onBackButtonPressed()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->getContentView()Lcom/hangame/hsp/ui/ContentViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onBackButtonPressed()V

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

.method onCreateActivity(Lcom/hangame/hsp/ui/HSPUiActivity;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onCreateActivity():"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFirstContentView:Z

    invoke-static {p1}, Lcom/hangame/hsp/ui/ResourceUtil;->setActivity(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/hangame/hsp/ui/DeviceController;->setActivity(Lcom/hangame/hsp/ui/HSPUiActivity;)V

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->onCreate()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onDestroyActivity()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onDestroyActivity()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->handleDestroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onPauseActivity()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onPauseActivity()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->onPause()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->HIDE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->onRestoreInstanceState(Landroid/os/Bundle;)V

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

.method onResumeActivity()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onResumeActivity()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFirstContentView:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFirstContentView:Z

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/MainViewContainer;->showContentView(Lcom/hangame/hsp/ui/HSPUiUri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->SHOW:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    invoke-direct {p0, v0, v3}, Lcom/hangame/hsp/ui/HSPUiLauncher;->notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->onResume()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->onSaveInstanceState(Landroid/os/Bundle;)V

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

.method onUserInteraction()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "onUserInteraction()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ON_USER_INTERACTION:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onWindowFocusChanged(Z)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->onWindowFocusChanged(Z)V

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

.method public removeUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPUiLauncher"

    const-string v2, "removeUiEventListener(): "

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mUiEventListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLockScreenOrientationEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsLockScreenOrientationEvent:Z

    return-void
.end method

.method startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/HSPUiActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

.method updateOrientation(I)V
    .locals 3

    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPUiLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLockScreenOrientationEvent(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsLockScreenOrientationEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mIsLockScreenOrientationEvent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher;->mMainViewContainer:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->onRotate(I)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ROTATE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    invoke-direct {p0, v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->notifyUiEvent(Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
