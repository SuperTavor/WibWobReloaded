.class public Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;
.super Lcom/hangame/hsp/ui/view/HSPWebView;


# static fields
.field private static final JS_INTERFACE_NAME_SNS:Ljava/lang/String; = "sns"

.field private static final TAG:Ljava/lang/String; = "HSPSnsOAuthWebview"


# instance fields
.field private mIdpCode:Ljava/lang/String;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/HSPWebView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mIdpCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    const-string v0, "HSPSnsOAuthWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebPageView: title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "idpCode"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mIdpCode:Ljava/lang/String;

    const-string v0, "redirectUrl"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview$GetPincodeJavaScriptInterface;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V

    const-string v2, "sns"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->setPreviousViewShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->closeView()V

    return-void
.end method

.method private setPreviousViewShow()V
    .locals 3

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_history"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBackButtonPressed()V
    .locals 0

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onBackButtonPressed()V

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->closeView()V

    return-void
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "HSPSnsOAuthWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mIdpCode:Ljava/lang/String;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:window.sns.getPinCode(document.getElementsByTagName(\'code\')[0].innerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/HSPWebView;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "HSPSnsOAuthWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mIdpCode:Ljava/lang/String;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->setPreviousViewShow()V

    const-string v0, "access_token="

    const-string v1, "expires_in="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "accessToken"

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->closeView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->closeView()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mIdpCode:Ljava/lang/String;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oauth_verifier="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "accessVerifier"

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->setPreviousViewShow()V

    invoke-virtual {p0}, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;->closeView()V

    goto :goto_0
.end method
