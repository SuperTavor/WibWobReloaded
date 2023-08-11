.class Lcom/example/util/bp;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/example/util/YWPWebView2;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/example/util/YWPWebView2;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/example/util/YWPWebView2;Lcom/example/util/YWPWebView2;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v1, p0, Lcom/example/util/bp;->b:Z

    iput-boolean v1, p0, Lcom/example/util/bp;->c:Z

    iput-boolean v1, p0, Lcom/example/util/bp;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    iput-boolean v1, p0, Lcom/example/util/bp;->f:Z

    iput-object p2, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    return-void
.end method


# virtual methods
.method public a(Lcom/example/util/bp;)V
    .locals 1

    iget-boolean v0, p1, Lcom/example/util/bp;->b:Z

    iput-boolean v0, p0, Lcom/example/util/bp;->b:Z

    iget-boolean v0, p1, Lcom/example/util/bp;->c:Z

    iput-boolean v0, p0, Lcom/example/util/bp;->c:Z

    iget-boolean v0, p1, Lcom/example/util/bp;->d:Z

    iput-boolean v0, p0, Lcom/example/util/bp;->d:Z

    iget-boolean v0, p1, Lcom/example/util/bp;->f:Z

    iput-boolean v0, p0, Lcom/example/util/bp;->f:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    if-ne v0, v2, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0x8

    :cond_2
    if-eq v0, v2, :cond_5

    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v1, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/util/YWPWebView2;->setBaseUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BASEURL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    invoke-virtual {v0, p1}, Lcom/example/util/YWPWebView2;->setBaseUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BASEURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/util/YWPWebView2;->setBaseUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ufe0fonPageFinished isErrored="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/util/bp;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isErroredStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/util/bp;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished isHardwareAccelorated ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/example/util/bp;->b:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/example/util/bp;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/example/util/bp;->b:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "false"

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/example/util/bp;->c:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/example/util/bp;->c:Z

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/example/util/bp;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/example/util/bp;->b:Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25aa\ufe0fonPageFinished\u3000OK isReload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/util/bp;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v0, p0, Lcom/example/util/bp;->d:Z

    if-eqz v0, :cond_a

    iput-boolean v3, p0, Lcom/example/util/bp;->d:Z

    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    invoke-virtual {v0}, Lcom/example/util/YWPWebView2;->webVisible()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "javascript:window.ywpwebview.getSource2(document.documentElement.outerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->d(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->removeCustomFont()V

    :cond_9
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/example/util/YWPWebViewHelper2;->_didFinishLoading(ILjava/lang/String;)V

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinish one time font end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/example/util/bp;->f:Z

    if-eqz v0, :cond_b

    iput-boolean v3, p0, Lcom/example/util/bp;->f:Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->removeCustomFont()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->b(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    invoke-static {v0, v3}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/example/util/YWPWebViewHelper2;->_didFinishLoading(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->e(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->d(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    invoke-static {v0, v3}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/example/util/YWPWebViewHelper2;->_didFinishLoading(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0, v3}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/util/bp;->d:Z

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinish call javascript getSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v0, "javascript:window.ywpwebview.getSource(document.documentElement.outerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/example/util/bp;->b:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/example/util/bp;->c:Z

    :cond_1
    iget-boolean v0, p0, Lcom/example/util/bp;->b:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/example/util/bp;->c:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted isReload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/util/bp;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/example/util/YWPWebViewHelper2;->_onPageStarted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/example/util/bp;->f:Z

    :cond_3
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->b(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/example/util/bp;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    :cond_4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u25aa\ufe0fonReceivedError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/util/bp;->b:Z

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p3}, Lcom/example/util/YWPWebViewHelper2;->_didFailLoading(ILjava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, -0x1

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "opencssite:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-virtual {v1, v0}, Lcom/example/util/YWPWebView2;->openOutSideCSSite(Ljava/lang/String;)V

    :cond_1
    const-string v0, "coresng::command::"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_d

    const-string v0, ""

    const-string v0, "coresng::command::"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "exeGMBrowser::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_7

    const-string v0, "::"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v5, :cond_4

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "exeGMBrowser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    aget-object v0, v0, v5

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " goToBrowser ===>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/example/util/YWPWebViewHelper2;->showOutsideBrowser(ILjava/lang/String;)V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    :cond_6
    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not find utl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v1, "playaudio::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_9

    const-string v1, "playaudio::"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoudDataLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/example/util/YWPWebViewHelper2;->_soundPlay(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "closewebview::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_a

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0}, Lcom/example/util/YWPWebViewHelper2;->_closeWebView(I)V

    goto :goto_0

    :cond_a
    const-string v1, "errorwebview::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_b

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0}, Lcom/example/util/YWPWebViewHelper2;->_errorWebView(I)V

    goto :goto_0

    :cond_b
    const-string v1, "geturlhash::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->c(Lcom/example/util/YWPWebView2;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrlHash Call!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0}, Lcom/example/util/YWPWebViewHelper2;->_getUrlHash(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v0}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/example/util/YWPWebViewHelper2;->_shouldStartLoading(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->b(Lcom/example/util/YWPWebView2;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->d(Lcom/example/util/YWPWebView2;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->b(Lcom/example/util/YWPWebView2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->e(Lcom/example/util/YWPWebView2;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/example/util/bp;->a:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->d(Lcom/example/util/YWPWebView2;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_f
    iget-object v1, p0, Lcom/example/util/bp;->e:Lcom/example/util/YWPWebView2;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    goto/16 :goto_1
.end method
