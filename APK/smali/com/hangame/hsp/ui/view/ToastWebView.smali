.class public abstract Lcom/hangame/hsp/ui/view/ToastWebView;
.super Lcom/hangame/hsp/ui/view/HSPWebView;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ToastWebView"


# instance fields
.field public ACCESS_TOKEN_PARAM:Ljava/lang/String;

.field public ACCESS_TOKEN_SECRET_PARAM:Ljava/lang/String;

.field public ERROR_TYPE_PARAM:Ljava/lang/String;

.field public EXPIRES_IN_PARAM:Ljava/lang/String;

.field protected mChannelId:Ljava/lang/String;

.field protected mOverwriteYN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/HSPWebView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    const-string v0, "access_token"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->ACCESS_TOKEN_PARAM:Ljava/lang/String;

    const-string v0, "access_token_secret"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->ACCESS_TOKEN_SECRET_PARAM:Ljava/lang/String;

    const-string v0, "expires_in"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->EXPIRES_IN_PARAM:Ljava/lang/String;

    const-string v0, "errorType"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->ERROR_TYPE_PARAM:Ljava/lang/String;

    const-string v0, "mappingOverwriteYN"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "N"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->mOverwriteYN:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;-><init>(Lcom/hangame/hsp/ui/view/ToastWebView;)V

    const-string v2, "ToastWebView"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView;->mOverwriteYN:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/view/ToastWebView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->closeView()V

    return-void
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/view/ToastWebView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->closeView()V

    return-void
.end method


# virtual methods
.method protected handleResult(Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->closeAllView()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->onIdpLogout()V

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, -0x7effff91

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x14006f

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/hangame/hsp/ui/view/ToastWebView$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/view/ToastWebView$1;-><init>(Lcom/hangame/hsp/ui/view/ToastWebView;)V

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->closeAllView()V

    goto :goto_0
.end method

.method protected abstract loginByOAuth(Lcom/hangame/hsp/auth/OAuthData;)V
.end method

.method protected onIdpLogout()V
    .locals 0

    return-void
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "ToastWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view.getTitle() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Login Result"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mobile Certification Result"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "javascript:window.ToastWebView.getOAuthToken(document.getElementById(\'result\').innerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "ToastWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted view.getTitle() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "error=access_denied"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "facebook"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastWebView;->closeAllView()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPause()V

    const-string v0, "ToastWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAlertDialog()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onResume()V

    const-string v0, "ToastWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->isLoginProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    :cond_1
    return-void
.end method
