.class Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

.field final synthetic val$javascript:Ljava/lang/String;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/WebViewBaseContainer$1;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->this$1:Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

    iput-object p2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->val$javascript:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "WebViewBaseContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call javascript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->val$javascript:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->this$1:Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->val$javascript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->this$1:Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->this$0:Lcom/hangame/hsp/ui/WebViewBaseContainer;

    iget-object v1, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->this$1:Lcom/hangame/hsp/ui/WebViewBaseContainer$1;

    iget-object v1, v1, Lcom/hangame/hsp/ui/WebViewBaseContainer$1;->val$webUri:Lcom/hangame/hsp/util/UriData;

    iget-object v2, p0, Lcom/hangame/hsp/ui/WebViewBaseContainer$1$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->handleWebClientHandlerResult(Lcom/hangame/hsp/util/UriData;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
