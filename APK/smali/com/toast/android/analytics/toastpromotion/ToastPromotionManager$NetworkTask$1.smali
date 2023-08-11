.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;


# instance fields
.field final synthetic this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;

    invoke-static {v0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->access$902(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promotion data fetch success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
