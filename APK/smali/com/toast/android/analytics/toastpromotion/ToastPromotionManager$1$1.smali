.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;


# instance fields
.field final synthetic this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute_promotion success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v0, v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    iget-object v0, v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-nez v0, :cond_0

    const-string v0, "ToastPromotion"

    const-string v1, "Campaign Listener is NULL!!!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v0, v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    iget-object v0, v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v0, v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$100(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send onMissionCompleted callback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v2, v2, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$100(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v1, v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$100(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    iget-object v1, v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    iget-object v1, v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    invoke-interface {v1, v0}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onMissionComplete(Ljava/util/List;)V

    :cond_1
    return-void
.end method
