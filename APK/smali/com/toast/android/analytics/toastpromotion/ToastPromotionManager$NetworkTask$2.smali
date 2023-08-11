.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;


# instance fields
.field final synthetic this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$2;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$2;->this$1:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->access$902(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ToastPromotion"

    const-string v1, "Promotion data fetch fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
