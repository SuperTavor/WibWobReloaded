.class Lcom/toast/android/analytics/job/RequestWorkerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/job/RequestWorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-static {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->access$000(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget-boolean v0, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x1

    iput v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mRetryCount:I

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mShouldWaitForFail:Z

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/job/RequestWorkerThread;->mIsWaitingForRequestResult:Z

    iget-object v0, p0, Lcom/toast/android/analytics/job/RequestWorkerThread$1;->this$0:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-static {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->access$100(Lcom/toast/android/analytics/job/RequestWorkerThread;)Ljava/lang/Object;

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
