.class Lcom/hangame/hsp/sns/HSPTwitterService$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;

.field final synthetic val$request:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lorg/apache/http/client/methods/HttpGet;Lcom/hangame/hsp/core/HSPHttpResHandler;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$request:Lorg/apache/http/client/methods/HttpGet;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iput-object p4, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HSPTwitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idpAuthTicket["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v1}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->setAccessToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v1}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->setAccessSecret(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$request:Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    invoke-virtual {v0, v5, v1, v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPTwitterService"

    const-string v1, "authTicket is empty!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;

    const-string v1, "SNS"

    const/16 v2, 0x1009

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPTwitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIdpAuthTicketLoad fail!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$6;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
