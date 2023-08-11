.class Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field clickCount:I

.field final synthetic this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

.field final synthetic val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

.field final synthetic val$radioButton:Landroid/widget/ImageView;

.field final synthetic val$repeatType:I


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/widget/ImageView;Lcom/toast/android/analytics/promotion/model/Promotion;I)V
    .locals 1

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iput-object p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$radioButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    iput p4, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$repeatType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->clickCount:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->clickCount:I

    iget v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->clickCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$radioButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getUncheckedImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-static {v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->access$200(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$radioButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getCheckedImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$repeatType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-static {v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->access$200(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_24HR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->this$0:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;->val$promotion:Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-static {v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->access$200(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
