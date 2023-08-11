.class Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/oauth/HSPOAuth20Service;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "display"

    const-string v2, "touch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response_type"

    const-string v2, "token"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$000(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$100(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scope"

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$200(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$300(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPOAuth20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sns Auth URL ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sns.oauth.webview"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "idpCode"

    iget-object v3, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v3}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$400(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "redirectUrl"

    iget-object v3, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v3}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$100(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "weburl"

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_gnbShow"

    const-string v2, "false"

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPOAuth20"

    const-string v1, "Network is not Connected"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    const/4 v1, 0x0

    const-string v2, "SNS"

    const/16 v3, 0x1002

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HSPOAuth20"

    const-string v2, "exception occurred in auth()"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    const-string v1, "SNS"

    const v2, 0xf000

    const-string v3, "HSPOAuth20 exception occurred in auth()"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
