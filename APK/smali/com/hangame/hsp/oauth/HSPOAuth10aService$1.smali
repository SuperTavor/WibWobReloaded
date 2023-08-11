.class Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/oauth/HSPOAuth10aService;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-static {v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->access$200(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-static {v1}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->access$000(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-static {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->access$100(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;->retrieveRequestToken(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPOAuth10a"

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

    iget-object v3, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-static {v3}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->access$300(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "weburl"

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_gnbShow"

    const-string v2, "false"

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1$1;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1$1;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    :try_end_0
    .catch Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HSPOAuth10a"

    const-string v2, "HttpHostConnectException in auth()"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    const-string v1, "SNS"

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HSPOAuth10a"

    const-string v2, "exception occurred in auth()"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    const-string v1, "SNS"

    const v2, 0xf000

    const-string v3, "HSPOAuth10A exception occurred in auth()"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
