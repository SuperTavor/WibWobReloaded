.class Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

.field final synthetic val$existParent:Landroid/view/ViewManager;

.field final synthetic val$existView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/view/ViewManager;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->val$existParent:Landroid/view/ViewManager;

    iput-object p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->val$existView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->val$existParent:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;->val$existView:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->access$000(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/view/ViewManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
