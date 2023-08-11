.class Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

.field final synthetic val$adspaceName:Ljava/lang/String;

.field final synthetic val$animation:I


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->val$adspaceName:Ljava/lang/String;

    iput p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->val$animation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->val$adspaceName:Ljava/lang/String;

    iget v3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;->val$animation:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    return-void
.end method
