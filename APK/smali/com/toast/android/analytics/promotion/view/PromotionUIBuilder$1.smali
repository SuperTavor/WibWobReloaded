.class Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

.field final synthetic val$adspaceName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;->val$adspaceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;->val$adspaceName:Ljava/lang/String;

    const/16 v2, 0x7003

    const-string v3, "can\'t load image [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$1;->val$url:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->notifyPendingOperationFail(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
