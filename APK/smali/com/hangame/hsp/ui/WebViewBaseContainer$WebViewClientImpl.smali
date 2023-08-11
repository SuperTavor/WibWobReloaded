.class Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;Lcom/hangame/hsp/ui/WebViewBaseContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;-><init>(Lcom/hangame/hsp/ui/WebViewBaseContainer;)V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "WebViewBaseContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-static {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->access$200(Lcom/hangame/hsp/ui/WebViewBaseContainer;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$WebViewClientImpl;->mInstance:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
