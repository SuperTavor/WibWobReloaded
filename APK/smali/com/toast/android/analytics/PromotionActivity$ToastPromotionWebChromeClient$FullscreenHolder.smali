.class Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;
.super Landroid/widget/FrameLayout;


# instance fields
.field final synthetic this$1:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;->this$1:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
