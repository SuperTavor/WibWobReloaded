.class public Lcom/toast/android/analytics/heartbeat/HeartBeatManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;


# static fields
.field static final TAG:Ljava/lang/String; = "HeartBeatManager"

.field static sHeartBeatSequence:I

.field static sInstance:Lcom/toast/android/analytics/heartbeat/HeartBeatManager;


# instance fields
.field mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

.field mHeartBeatThreadCreationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    invoke-direct {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->sInstance:Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    const/4 v0, 0x0

    sput v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->sHeartBeatSequence:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThreadCreationCount:I

    return-void
.end method

.method public static getHeartBeatSequence()I
    .locals 1

    sget v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->sHeartBeatSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->sHeartBeatSequence:I

    return v0
.end method

.method public static getInstance()Lcom/toast/android/analytics/heartbeat/HeartBeatManager;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->sInstance:Lcom/toast/android/analytics/heartbeat/HeartBeatManager;

    return-object v0
.end method


# virtual methods
.method public completeScheduledJob(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->readyForTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    if-nez v0, :cond_1

    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatThread will be started!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-direct {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iget v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThreadCreationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThreadCreationCount:I

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->isTerminationReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->cancelStop()V

    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatThread cancel stop!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    if-eqz v0, :cond_0

    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatThread stop!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatManager;->mHeartBeatThread:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->stop()V

    :cond_0
    return-void
.end method
