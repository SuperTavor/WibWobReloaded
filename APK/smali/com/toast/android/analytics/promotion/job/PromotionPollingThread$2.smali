.class Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iput-boolean v4, v0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->mWakeup:Z

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    invoke-static {v0}, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->access$300(Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "PromotionPollingThread"

    const-string v1, "promotion data fetch fail, polling:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread$2;->this$0:Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;

    iget v3, v3, Lcom/toast/android/analytics/promotion/job/PromotionPollingThread;->pollingInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
