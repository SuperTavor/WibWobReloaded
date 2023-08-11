.class Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "PromotionPollingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=> response promotion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$000(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$100(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->addPromotionData(Ljava/lang/String;)I

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->cleanUpPendingShowOperation()V
    :try_end_0
    .catch Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget v0, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/16 v2, 0x12c

    iput v2, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$200(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "PromotionPollingThread"

    const-string v1, "promotion fetch success.. length:%d polling:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget v4, v4, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget v0, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/16 v2, 0x12c

    iput v2, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$200(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget v2, v2, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/16 v3, 0x12c

    iput v3, v2, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    :cond_2
    iget-object v2, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$1;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v2}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$200(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
