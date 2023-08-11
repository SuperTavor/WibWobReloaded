.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

.field final synthetic val$promotionId:I


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    iput p2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->val$promotionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    iget v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->val$promotionId:I

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$000(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;I)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "promotionExecHost"

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v3, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    new-instance v3, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$2;

    invoke-direct {v3, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$2;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V

    const-string v3, "ToastPromotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute_promotion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/toast/android/analytics/common/network/PromotionRequest;

    invoke-direct {v3, v0, v1}, Lcom/toast/android/analytics/common/network/PromotionRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    invoke-virtual {v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    :cond_0
    return-void
.end method
