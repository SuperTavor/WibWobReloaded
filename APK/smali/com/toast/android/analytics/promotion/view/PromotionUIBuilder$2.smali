.class Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

.field final synthetic val$adspaceName:Ljava/lang/String;

.field final synthetic val$uiCache:Lcom/toast/android/analytics/promotion/view/PromotionUICache;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;Lcom/toast/android/analytics/promotion/view/PromotionUICache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;->val$uiCache:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iput-object p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;->val$adspaceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;->val$uiCache:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder$2;->val$adspaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->executePendingOperation(Ljava/lang/String;)V

    return-void
.end method
