.class Lcom/toast/android/analytics/promotion/PromotionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/PromotionManager;

.field final synthetic val$requestData:Lcom/toast/android/analytics/model/RequestData;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/PromotionManager;Lcom/toast/android/analytics/model/RequestData;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1;->this$0:Lcom/toast/android/analytics/promotion/PromotionManager;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1;->val$requestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1;->val$requestData:Lcom/toast/android/analytics/model/RequestData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "promotionExecHost"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PromotionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify Campaign Server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v2, Lcom/toast/android/analytics/promotion/PromotionManager$1$1;

    invoke-direct {v2, p0}, Lcom/toast/android/analytics/promotion/PromotionManager$1$1;-><init>(Lcom/toast/android/analytics/promotion/PromotionManager$1;)V

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    new-instance v2, Lcom/toast/android/analytics/promotion/PromotionManager$1$2;

    invoke-direct {v2, p0}, Lcom/toast/android/analytics/promotion/PromotionManager$1$2;-><init>(Lcom/toast/android/analytics/promotion/PromotionManager$1;)V

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V

    const-string v2, "PromotionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute_promotion \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1;->val$requestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v4}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/toast/android/analytics/common/network/PromotionRequest;

    iget-object v3, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1;->val$requestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-direct {v2, v3, v0}, Lcom/toast/android/analytics/common/network/PromotionRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    invoke-virtual {v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    :cond_0
    return-void
.end method
