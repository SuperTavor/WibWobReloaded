.class final Lcom/hangame/hsp/auth/login/SuspendManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SuspendManager"

.field private static final lock:Ljava/lang/Object;

.field private static sEnableSuspend:Z

.field private static final sTimerTaskSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sTimerTaskSet:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sEnableSuspend:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sEnableSuspend:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sTimerTaskSet:Ljava/util/Set;

    return-object v0
.end method

.method public static cancelAllTimers()V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SuspendManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAllTimers() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sTimerTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/auth/login/SuspendManager$SuspendTimerTask;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/SuspendManager$SuspendTimerTask;->cancel()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sTimerTaskSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static disableSuspend()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SuspendManager"

    const-string v2, "disableSuspend()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/SuspendManager;->cancelAllTimers()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sEnableSuspend:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableSuspend()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SuspendManager"

    const-string v2, "enableSuspend()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sEnableSuspend:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startTimer()V
    .locals 6

    sget-object v1, Lcom/hangame/hsp/auth/login/SuspendManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sEnableSuspend:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getSuspendDelayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-string v0, "SuspendManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTimer() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/hangame/hsp/auth/login/SuspendManager$SuspendTimerTask;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/hangame/hsp/auth/login/SuspendManager$SuspendTimerTask;-><init>(Lcom/hangame/hsp/auth/login/SuspendManager$1;)V

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v0, Lcom/hangame/hsp/auth/login/SuspendManager;->sTimerTaskSet:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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
