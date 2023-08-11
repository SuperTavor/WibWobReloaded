.class Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

.field private mOriginalOrientation:I

.field final synthetic this$0:Lcom/toast/android/analytics/PromotionActivity;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/PromotionActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    iput-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mOriginalOrientation:I

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    iget-object v2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;-><init>(Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    iget-object v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    invoke-virtual {v1, p1, v3}, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mFullscreenContainer:Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient$FullscreenHolder;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomView:Landroid/view/View;

    iput-object p2, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/toast/android/analytics/PromotionActivity$ToastPromotionWebChromeClient;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
