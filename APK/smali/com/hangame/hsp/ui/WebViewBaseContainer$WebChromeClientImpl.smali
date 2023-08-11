.class Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private final mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Lcom/hangame/hsp/ui/WebViewBaseContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onHideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onShowFileChooser(Landroid/webkit/ValueCallback;)Z

    move-result v0

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->openFileChooser(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->openFileChooser(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebChromeClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->openFileChooser(Landroid/webkit/ValueCallback;)V

    return-void
.end method
