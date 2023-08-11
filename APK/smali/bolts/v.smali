.class Lbolts/v;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# instance fields
.field final synthetic a:Lbolts/j;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lbolts/j;

.field final synthetic d:Lbolts/u;


# virtual methods
.method public a(Lbolts/l;)Lbolts/l;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v6

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lbolts/v;->d:Lbolts/u;

    invoke-static {v1}, Lbolts/u;->a(Lbolts/u;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    new-instance v1, Lbolts/w;

    invoke-direct {v1, p0}, Lbolts/w;-><init>(Lbolts/v;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lbolts/WebViewAppLinkResolver$2$2;

    invoke-direct {v1, p0, v6}, Lbolts/WebViewAppLinkResolver$2$2;-><init>(Lbolts/v;Lbolts/t;)V

    const-string v2, "boltsWebViewAppLinkResolverResult"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lbolts/v;->a:Lbolts/j;

    invoke-virtual {v1}, Lbolts/j;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbolts/v;->a:Lbolts/j;

    invoke-virtual {v1}, Lbolts/j;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v3

    :goto_0
    iget-object v1, p0, Lbolts/v;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbolts/v;->c:Lbolts/j;

    invoke-virtual {v2}, Lbolts/j;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lbolts/v;->a(Lbolts/l;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method
