.class Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

.field final synthetic val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-static {v0, v1, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->access$100(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;Landroid/view/View;)V

    return-void
.end method
