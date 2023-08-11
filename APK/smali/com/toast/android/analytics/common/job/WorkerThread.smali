.class public abstract Lcom/toast/android/analytics/common/job/WorkerThread;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "WorkerThread"


# instance fields
.field protected mLock:Ljava/lang/Object;

.field protected mName:Ljava/lang/String;

.field protected volatile mRunning:Z

.field protected mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

.field protected mTerminationReserved:Z

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mTerminationReserved:Z

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    iget-object v1, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;->completeScheduledJob(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    :cond_0
    iput-object v2, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method public abstract execute()V
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mRunning:Z

    return v0
.end method

.method public isTerminationReserved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mTerminationReserved:Z

    return v0
.end method

.method public setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mScheduledJobListener:Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;

    return-void
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/toast/android/analytics/common/job/WorkerThread$1;

    invoke-direct {v1, p0}, Lcom/toast/android/analytics/common/job/WorkerThread$1;-><init>(Lcom/toast/android/analytics/common/job/WorkerThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mRunning:Z

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
