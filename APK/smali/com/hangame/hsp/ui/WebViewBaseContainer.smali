.class public abstract Lcom/hangame/hsp/ui/WebViewBaseContainer;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final FILECHOOSER_REQ_CODE:I = 0x1

.field public static final GOOGLE_PLAY_STORE_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final INTENT_PROTOCOL_END:Ljava/lang/String; = ";end;"

.field public static final INTENT_PROTOCOL_INTENT:Ljava/lang/String; = "#Intent;"

.field public static final INTENT_PROTOCOL_START:Ljava/lang/String; = "intent:"

.field private static final MARKET_SCHEME:Ljava/lang/String; = "market"

.field private static final SCHEME_DELEMETER:Ljava/lang/String; = "://"

.field private static final SHOW_FILECHOOSER_REQ_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebViewBaseContainer"


# instance fields
.field private mIsOpenKakaoLink:Z

.field private mUploadMessage:Landroid/webkit/ValueCallback;

.field private mUploadMessage_list:Landroid/webkit/ValueCallback;

.field protected final mUseUserTitle:Z

.field protected final mUseWebClient:Z

.field private final mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

.field protected final mWebSettings:Landroid/webkit/WebSettings;

.field protected final mWebView:Landroid/webkit/WebView;

.field private final mWebViewClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;

.field private misFirstLoad:Z


# direct methods
.method protected constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-boolean v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->misFirstLoad:Z

    iput-object v4, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage:Landroid/webkit/ValueCallback;

    iput-object v4, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage_list:Landroid/webkit/ValueCallback;

    iput-boolean v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mIsOpenKakaoLink:Z

    const-string v0, "false"

    const-string v3, "_usewebclient"

    invoke-virtual {p1, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUseWebClient:Z

    const-string v0, "_title"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->containsParameter(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUseUserTitle:Z

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUseUserTitle:Z

    if-ne v0, v2, :cond_0

    const-string v0, "_title"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->setTitle(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    new-instance v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;

    invoke-direct {v0, p0, v4}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Lcom/hangame/hsp/ui/WebViewBaseContainer$1;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebViewClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;

    new-instance v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    invoke-direct {v0, p0, v4}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Lcom/hangame/hsp/ui/WebViewBaseContainer$1;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebViewClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isWebviewHardwareAccelerate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "hsp.common.background"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->setView(Landroid/view/View;)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/WebViewBaseContainer;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->handleWebClient(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleCustomScheme(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "WebViewBaseContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCustomScheme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "geo:0,0?q="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/AppUtil;->launchDefaultViewer(Landroid/net/Uri;)Z

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "intent:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "intent:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "#Intent;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewBaseContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customUrl :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "kakaolink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->openKakaolink(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "kakaolink"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mIsOpenKakaoLink:Z

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->openKakaolink(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "market"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mIsOpenKakaoLink:Z

    if-ne v2, v1, :cond_6

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mIsOpenKakaoLink:Z

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/AppUtil;->launchDefaultViewer(Landroid/net/Uri;)Z

    move v0, v1

    goto :goto_0
.end method

.method private handleWebClient(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "WebViewBaseContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWebClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUseWebClient:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/hangame/hsp/util/UriData;->createUriData(Ljava/lang/String;)Lcom/hangame/hsp/util/UriData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "WebViewBaseContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/hangame/hsp/util/UriData;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/util/UriData;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/HSPWebClient;->isSupportedURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Landroid/webkit/WebView;Lcom/hangame/hsp/util/UriData;)V

    invoke-static {p2, v0}, Lcom/hangame/hsp/HSPWebClient;->process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openKakaolink(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x10000000

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WebViewBaseContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.kakao.talk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebChromeClient:Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method protected getWebUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleWebClientHandlerResult(Lcom/hangame/hsp/util/UriData;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const-string v0, "WebViewBaseContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    if-eq p2, v4, :cond_4

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage_list:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    if-eq p2, v4, :cond_5

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage_list:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage_list:Landroid/webkit/ValueCallback;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-array v0, v5, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1
.end method

.method protected onBackButtonPressed()V
    .locals 2

    const-string v0, "WebViewBaseContainer"

    const-string v1, "onBackButtonPressed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onBackButtonPressed()V

    goto :goto_0
.end method

.method protected onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method protected onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->misFirstLoad:Z

    return-void
.end method

.method protected onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    return-void
.end method

.method protected onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onGeolocationPermissionsHidePrompt()V
    .locals 0

    return-void
.end method

.method protected onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    return-void
.end method

.method protected onHideCustomView()V
    .locals 0

    return-void
.end method

.method protected onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onJsTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    iget-object v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method protected onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    return-void
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "WebViewBaseContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUseUserTitle:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->misFirstLoad:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewBaseContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Web URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->handleCustomScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->closeView()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->misFirstLoad:Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method

.method protected onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    return-void
.end method

.method protected onShowFileChooser(Landroid/webkit/ValueCallback;)Z
    .locals 2

    const-string v0, "WebViewBaseContainer"

    const-string v1, "openFileChooser"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage_list:Landroid/webkit/ValueCallback;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "File Chooser"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onTopBarPressed()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    return-void
.end method

.method protected onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2

    const-string v0, "WebViewBaseContainer"

    const-string v1, "openFileChooser"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer;->mUploadMessage:Landroid/webkit/ValueCallback;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "File Chooser"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected final removeAllCookies()V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method

.method protected shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->handleCustomScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
