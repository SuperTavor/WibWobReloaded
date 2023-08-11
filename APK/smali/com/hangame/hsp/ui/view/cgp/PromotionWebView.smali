.class public Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;
.super Lcom/hangame/hsp/ui/view/HSPWebView;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/HSPWebView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    const-string v0, "PromotionWebView"

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkSuccess(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "PromotionWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "PromotionWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private launchPromotionInWeb(Landroid/net/Uri;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->removeAllCookies()V

    const-string v1, "urlScheme"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "bundleId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "storeUrl"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "requesterUri"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v1, "promotionId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    const-string v1, "targetGameNo"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :try_start_2
    const-string v3, "rewardGameNo"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->requestPromotionStart(II)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send promotion status message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->PROMOTION_REQEUSTED:Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->checkSuccess(ZLjava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "hsp.common.backtogame"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$1;-><init>(Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;)V

    invoke-static {v0, v1, v9}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v3, v1

    move v2, v0

    move v1, v0

    :goto_2
    const-string v8, "PromotionWebView"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lcom/hangame/hsp/util/AppUtil;->isExistApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hsp.common.gameinstalled"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$2;

    invoke-direct {v1, p0, v4, v5}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$2;-><init>(Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v9}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_1
    const-string v0, "hsp.common.gamenotinstalled"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$3;

    invoke-direct {v2, p0, v1, v6, v7}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView$3;-><init>(Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, v9}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method private setWebView()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_title"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_orientation"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->setWebView()V

    const-string v1, "webUrl"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/core/CGPService;->getCgpServerInfo()Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpWasUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public processHsplsp(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "launchStore"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/core/CGPService;->getCgpResponse()Lcom/hangame/hsp/cgp/response/CGPResponse;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCGPDataFromIdAndShape(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/response/CGPData;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->launchStore(Lcom/hangame/hsp/cgp/response/CGPData;)Z

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "launchApp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/core/CGPService;->getCgpResponse()Lcom/hangame/hsp/cgp/response/CGPResponse;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCGPDataFromIdAndShape(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/response/CGPData;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/AppUtil;->launchApp(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0

    :cond_2
    const-string v0, "launchPromotion"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p4}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->launchPromotionInWeb(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    const-string v0, "closeWindow"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0

    :cond_4
    const-string v0, "sendTitle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PromotionWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Query : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EncodedQuery : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/HSPWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v3, "hsplsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/hangame/hsp/ui/view/cgp/PromotionWebView;->processHsplsp(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PromotionWebView"

    const-string v2, "shouldOverrideUrlLoading exception."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
