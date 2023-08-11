.class public Lcom/toast/android/analytics/job/RequestRecordThread;
.super Lcom/toast/android/analytics/common/job/WorkerThread;


# static fields
.field public static final NAME:Ljava/lang/String; = "RequestRecordThread"

.field static final TAG:Ljava/lang/String; = "RequestRecordThread"


# instance fields
.field isDirtyDeviceId:Z

.field mRecordLock:Ljava/lang/Object;

.field mRequestDataBuffer:Ljava/util/List;

.field volatile mTerminateReserved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->isDirtyDeviceId:Z

    const-string v0, "RequestRecordThread"

    iput-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mName:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRecordLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    return-void
.end method

.method private postExecute()V
    .locals 2

    const-string v0, "RequestRecordThread"

    const-string v1, "RequestRecordThread post execute()"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mTerminateReserved:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->recordData()V

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->close()V

    return-void
.end method

.method private recordData()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/model/RequestData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getInstance()Lcom/toast/android/analytics/common/SqlRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/common/SqlRequestQueue;->addRequest(Lcom/toast/android/analytics/model/RequestData;)V

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/toast/android/analytics/model/RequestData;)V
    .locals 2

    iget-object v1, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRecordLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRecordLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

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

.method protected close()V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-super {p0}, Lcom/toast/android/analytics/common/job/WorkerThread;->close()V

    return-void
.end method

.method public execute()V
    .locals 2

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRunning:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRecordLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRequestDataBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestRecordThread;->mRecordLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->recordData()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->postExecute()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->postExecute()V

    return-void
.end method
