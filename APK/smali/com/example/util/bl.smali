.class Lcom/example/util/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/example/util/YWPWebView2;


# direct methods
.method constructor <init>(Lcom/example/util/YWPWebView2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/bl;->b:Lcom/example/util/YWPWebView2;

    iput-object p2, p0, Lcom/example/util/bl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/example/util/bl;->a:Ljava/lang/String;

    const-string v1, "<head>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<head>\n<style type=\"text/css\">\n@font-face{font-family: \'SeuratProN-B\';src: url(\'file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->getCustomFontFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');}\n</style>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->createCustomFont()Z

    invoke-static {}, Lcom/example/util/YWPWebView2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebView2;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDataWithBaseURL :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/example/util/bl;->b:Lcom/example/util/YWPWebView2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/example/util/YWPWebView2;->b(Lcom/example/util/YWPWebView2;Z)Z

    iget-object v0, p0, Lcom/example/util/bl;->b:Lcom/example/util/YWPWebView2;

    iget-object v1, p0, Lcom/example/util/bl;->b:Lcom/example/util/YWPWebView2;

    invoke-static {v1}, Lcom/example/util/YWPWebView2;->f(Lcom/example/util/YWPWebView2;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/example/util/YWPWebView2;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
