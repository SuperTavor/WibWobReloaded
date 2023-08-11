.class public Lcom/adjust/sdk/TimerOnce;
.super Ljava/lang/Object;


# instance fields
.field private command:Ljava/lang/Runnable;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private name:Ljava/lang/String;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private waitingTask:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/TimerOnce;)Lcom/adjust/sdk/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->command:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adjust/sdk/TimerOnce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancel(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "%s canceled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    return-void
.end method

.method public getFireIn()J
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public startIn(J)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/adjust/sdk/TimerOnce;->cancel(Z)V

    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/TimerOnce;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "%s starting. Launching in %s seconds"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/TimerOnce;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/TimerOnce$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/TimerOnce$1;-><init>(Lcom/adjust/sdk/TimerOnce;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/TimerOnce;->waitingTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
