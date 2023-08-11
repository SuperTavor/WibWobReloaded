.class Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;
.super Ljava/lang/Object;


# instance fields
.field mAdspaceName:Ljava/lang/String;

.field mAnimation:I

.field mLifeTime:I

.field mParent:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mParent:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mAnimation:I

    iput-object p3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mAdspaceName:Ljava/lang/String;

    iput p4, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mLifeTime:I

    return-void
.end method


# virtual methods
.method public getAdspaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mAdspaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getAnimation()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mAnimation:I

    return v0
.end method

.method public getLifeTime()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mLifeTime:I

    return v0
.end method

.method public getParent()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public setParent(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->mParent:Ljava/lang/ref/WeakReference;

    return-void
.end method
