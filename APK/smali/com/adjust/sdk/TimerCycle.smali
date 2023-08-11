.class public Lcom/adjust/sdk/TimerCycle;
.super Ljava/lang/Object;


# instance fields
.field private command:Ljava/lang/Runnable;

.field private cycleDelay:J

.field private cycleDelaySeconds:Ljava/lang/String;

.field private initialDelay:J

.field private isPaused:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private name:Ljava/lang/String;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JJLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iput-wide p4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double v2, p4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelaySeconds:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerCycle;)Lcom/adjust/sdk/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->command:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "%s is already started"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s starting in %s seconds and cycle every %s seconds"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelaySeconds:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/TimerCycle$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/TimerCycle$1;-><init>(Lcom/adjust/sdk/TimerCycle;)V

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iget-wide v4, p0, Lcom/adjust/sdk/TimerCycle;->cycleDelay:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v7, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_0
.end method

.method public suspend()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "%s is already suspended"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v6}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerCycle;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/adjust/sdk/TimerCycle;->initialDelay:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/TimerCycle;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s suspended with %s seconds left"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerCycle;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v7, p0, Lcom/adjust/sdk/TimerCycle;->isPaused:Z

    goto :goto_0
.end method
