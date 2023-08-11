.class public Lcom/adjust/sdk/ActivityHandler;
.super Landroid/os/HandlerThread;

# interfaces
.implements Lcom/adjust/sdk/IActivityHandler;


# static fields
.field private static final ACTIVITY_STATE_NAME:Ljava/lang/String; = "Activity state"

.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"

.field private static final ATTRIBUTION_NAME:Ljava/lang/String; = "Attribution"

.field private static BACKGROUND_TIMER_INTERVAL:J = 0x0L

.field private static final BACKGROUND_TIMER_NAME:Ljava/lang/String; = "Background timer"

.field private static FOREGROUND_TIMER_INTERVAL:J = 0x0L

.field private static final FOREGROUND_TIMER_NAME:Ljava/lang/String; = "Foreground timer"

.field private static FOREGROUND_TIMER_START:J = 0x0L

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field private attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private backgroundTimer:Lcom/adjust/sdk/TimerOnce;

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field private foregroundTimer:Lcom/adjust/sdk/TimerCycle;

.field private internalHandler:Landroid/os/Handler;

.field private internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;


# direct methods
.method private constructor <init>(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 7

    const/4 v2, 0x1

    const-string v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v0, "production"

    iget-object v1, p1, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    sget-object v1, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler$InternalState;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readAttribution(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readActivityState(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean v2, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    :goto_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean v2, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_INTERVAL:J

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerStart()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_START:J

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->BACKGROUND_TIMER_INTERVAL:J

    new-instance v0, Lcom/adjust/sdk/TimerCycle;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_START:J

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_INTERVAL:J

    const-string v6, "Foreground timer"

    invoke-direct/range {v0 .. v6}, Lcom/adjust/sdk/TimerCycle;-><init>(Ljava/lang/Runnable;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/TimerCycle;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/adjust/sdk/TimerOnce;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adjust/sdk/ActivityHandler$3;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/ActivityHandler$3;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-string v3, "Background timer"

    invoke-direct {v0, v1, v2, v3}, Lcom/adjust/sdk/TimerOnce;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/TimerOnce;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v1, p1, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->enabled:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->initInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFired()V

    return-void
.end method

.method static synthetic access$1000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrerInternal(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasksInternal(Lcom/adjust/sdk/EventResponseData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseTasksInternal(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionResponseTasksInternal(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSendInternal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFiredInternal()V

    return-void
.end method

.method static synthetic access$1900(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->backgroundTimerFiredInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->backgroundTimerFired()V

    return-void
.end method

.method static synthetic access$2000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustAttribution;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->launchDeeplinkMain(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopBackgroundTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startForegroundTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopForegroundTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startBackgroundTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endInternal()V

    return-void
.end method

.method private backgroundTimerFired()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$14;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$14;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private backgroundTimerFiredInternal()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private checkActivityState(Lcom/adjust/sdk/ActivityState;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing activity state"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAttributionState()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v0, v0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->getAttribution()V

    goto :goto_0
.end method

.method private checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Event missing"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustEvent;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Event not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createDeeplinkIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustIoActivityState"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteAttribution(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustAttribution"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private endInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->pauseSending()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    :cond_1
    return-void
.end method

.method private foregroundTimerFired()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$13;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$13;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private foregroundTimerFiredInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopForegroundTimer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method public static getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "AdjustConfig missing"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "AdjustConfig not initialized correctly"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_3

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Skipping initialization in background process (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler;-><init>(Lcom/adjust/sdk/AdjustConfig;)V

    goto :goto_0
.end method

.method private hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p4, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initInternal()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    new-instance v0, Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/DeviceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Event buffering is enabled"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Unable to get Google Play Services Advertising ID at start time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Unable to get any device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-wide v2, v1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v1

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v2}, Lcom/adjust/sdk/AdjustConfig;->hasAttributionChangedListener()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/adjust/sdk/AdjustFactory;->getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v0

    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->getSdkClickHandler(Z)Lcom/adjust/sdk/ISdkClickHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Google Play Services Advertising ID read correctly at start time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private launchAttributionListener(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$19;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler$19;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchAttributionResponseTasksInternal(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p1, Lcom/adjust/sdk/AttributionResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListener(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private launchDeeplinkMain(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Unable to open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private launchEventResponseTasksInternal(Lcom/adjust/sdk/EventResponseData;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-boolean v1, p1, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Launching success event tracking listener"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$15;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$15;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Launching failed event tracking listener"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$16;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$16;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchSessionResponseListener(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Launching success session tracking listener"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/adjust/sdk/ActivityHandler$17;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$17;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Launching failed session tracking listener"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/adjust/sdk/ActivityHandler$18;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$18;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchSessionResponseTasksInternal(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p1, Lcom/adjust/sdk/SessionResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListener(Landroid/os/Handler;)V

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseListener(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/ActivityHandler;->prepareDeeplink(Lcom/adjust/sdk/ResponseData;Landroid/os/Handler;)V

    return-void
.end method

.method private pauseSending()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->pauseSending()V

    return-void
.end method

.method private paused()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isOffline()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareDeeplink(Lcom/adjust/sdk/ResponseData;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    const-string v1, "deeplink"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->createDeeplinkIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/adjust/sdk/ActivityHandler$20;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/adjust/sdk/ActivityHandler$20;-><init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private processSession()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v2, :cond_0

    new-instance v2, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v2}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput v9, v2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Time travel!"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    :cond_1
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    :cond_2
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v2, v6

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Started subsession %d of session %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Time span since last activity too short for a new subsession"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queryStringClickPackageBuilder(Ljava/lang/String;)Lcom/adjust/sdk/PackageBuilder;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {v8}, Lcom/adjust/sdk/AdjustAttribution;-><init>()V

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Reading query string (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, v3, v7, v8}, Lcom/adjust/sdk/ActivityHandler;->readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "reftag"

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    iput-object v7, v0, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    iput-object v8, v0, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iput-object v6, v0, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    goto :goto_0
.end method

.method private readActivityState(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "AdjustIoActivityState"

    const-string v1, "Activity state"

    const-class v2, Lcom/adjust/sdk/ActivityState;

    invoke-static {p1, v0, v1, v2}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityState;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Activity state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    goto :goto_0
.end method

.method private readAttribution(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "AdjustAttribution"

    const-string v1, "Attribution"

    const-class v2, Lcom/adjust/sdk/AdjustAttribution;

    invoke-static {p1, v0, v1, v2}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/AdjustAttribution;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Attribution"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    goto :goto_0
.end method

.method private readOpenUrlInternal(Landroid/net/Uri;J)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v0, ""

    :cond_2
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->queryStringClickPackageBuilder(Ljava/lang/String;)Lcom/adjust/sdk/PackageBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->deeplink:Ljava/lang/String;

    const-string v1, "deeplink"

    invoke-virtual {v0, v1, p2, p3}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/ISdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v3, v2, v0

    const-string v4, "adjust_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "adjust_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p3, v3, v2}, Lcom/adjust/sdk/ActivityHandler;->trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private resumeSending()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->resumeSending()V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->resumeSending()V

    return-void
.end method

.method private saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeAttribution()V

    return-void
.end method

.method private sendReferrerInternal(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->queryStringClickPackageBuilder(Ljava/lang/String;)Lcom/adjust/sdk/PackageBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    const-string v1, "reftag"

    invoke-virtual {v0, v1, p2, p3}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/ISdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private startBackgroundTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/TimerOnce;

    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->BACKGROUND_TIMER_INTERVAL:J

    invoke-virtual {v0, v2, v3}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    goto :goto_0
.end method

.method private startForegroundTimer()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->start()V

    goto :goto_0
.end method

.method private startInternal()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSendInternal()V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processSession()V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkAttributionState()V

    goto :goto_0
.end method

.method private stopBackgroundTimer()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->cancel()V

    return-void
.end method

.method private stopForegroundTimer()V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->suspend()V

    return-void
.end method

.method private toSend()Z
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isForeground()Z

    move-result v0

    goto :goto_0
.end method

.method private trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v1, v0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-direct {p0, v4, v5}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage(Lcom/adjust/sdk/AdjustEvent;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v1, v1, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Buffered event %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startBackgroundTimer()V

    :cond_2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private transferSessionPackage(J)V
    .locals 7

    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "tracker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const-string v1, "campaign"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "adgroup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "creative"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActivityState(J)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v1, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, p1, v2

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v1, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Time travel!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    goto :goto_1
.end method

.method private updateHandlersStatusAndSend()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$12;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$12;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateHandlersStatusAndSendInternal()V
    .locals 1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSend()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->pauseSending()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->resumeSending()V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_0
.end method

.method private updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSend()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p4, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSend()V

    goto :goto_0
.end method

.method private declared-synchronized writeActivityState()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustIoActivityState"

    const-string v3, "Activity state"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeAttribution()V
    .locals 4

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustAttribution"

    const-string v3, "Attribution"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
    .locals 1

    instance-of v0, p1, Lcom/adjust/sdk/SessionResponseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    check-cast p1, Lcom/adjust/sdk/SessionResponseData;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IAttributionHandler;->checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/adjust/sdk/EventResponseData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/adjust/sdk/EventResponseData;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V

    goto :goto_0
.end method

.method public getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    return-object v0
.end method

.method public getInternalState()Lcom/adjust/sdk/ActivityHandler$InternalState;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    return-object v0
.end method

.method public init(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$11;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$11;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$9;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$10;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$10;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$5;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$5;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$4;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$4;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public readOpenUrl(Landroid/net/Uri;J)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$7;-><init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendReferrer(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$8;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAskingAttribution(Z)V
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v2

    const-string v3, "Adjust already enabled"

    const-string v4, "Adjust already disabled"

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean p1, v2, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    :goto_1
    const-string v1, "Package handler and attribution handler will start as paused due to the SDK being disabled"

    const-string v2, "Package and attribution handler will still start as paused due to the SDK being offline"

    const-string v3, "Package handler and attribution handler will start as active due to the SDK being enabled"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v2, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    if-nez p1, :cond_3

    :goto_2
    const-string v1, "Pausing package handler and attribution handler due to SDK being disabled"

    const-string v2, "Package and attribution handler remain paused due to SDK being offline"

    const-string v3, "Resuming package handler and attribution handler due to SDK being enabled"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setOfflineMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isOffline()Z

    move-result v0

    const-string v1, "Adjust already in offline mode"

    const-string v2, "Adjust already in online mode"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    const-string v0, "Package handler and attribution handler will start paused due to SDK being offline"

    const-string v1, "Package and attribution handler will still start as paused due to SDK being disabled"

    const-string v2, "Package handler and attribution handler will start as active due to SDK being online"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Pausing package and attribution handler to put SDK offline mode"

    const-string v1, "Package and attribution handler remain paused due to SDK being disabled"

    const-string v2, "Resuming package handler and attribution handler to put SDK in online mode"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$6;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p1, v1}, Lcom/adjust/sdk/AdjustAttribution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
