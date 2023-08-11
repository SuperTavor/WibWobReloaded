.class Lcom/toast/android/analytics/job/RequestWorkerThread$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/job/RequestWorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 5

    const/16 v4, 0xe10

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-static {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->access$200(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget-boolean v0, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mTerminateReserved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsProcessPostExecute:Z

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-static {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->access$300(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string v0, "RequestWorkerThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFail: response data is => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget-object v2, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget v2, v2, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    mul-int/lit16 v2, v2, 0x2710

    iput v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mWaitingForRetryMilliSecond:I

    const-string v0, "RequestWorkerThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== retry interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget v3, v3, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    mul-int/lit16 v3, v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget v0, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/16 v2, 0xe10

    iput v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsWaitingForRequestResult:Z

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$2;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-static {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->access$400(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
