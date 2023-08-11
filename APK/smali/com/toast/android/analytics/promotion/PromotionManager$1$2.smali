.class Lcom/toast/android/analytics/promotion/PromotionManager$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;


# instance fields
.field final synthetic this$1:Lcom/toast/android/analytics/promotion/PromotionManager$1;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/PromotionManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1$2;->this$1:Lcom/toast/android/analytics/promotion/PromotionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "PromotionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute_promotion fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/PromotionManager$1$2;->this$1:Lcom/toast/android/analytics/promotion/PromotionManager$1;

    iget-object v2, v2, Lcom/toast/android/analytics/promotion/PromotionManager$1;->val$requestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v2}, Lcom/toast/android/analytics/model/RequestData;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
