.class Lcom/hangame/hsp/sns/HSPTwitterService$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService$12;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;->this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    .locals 5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/sns/HSPTwitterService$12$1$1;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService$12$1;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;->this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPTwitterService$12;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v2}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;->this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPTwitterService$12;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v2}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSPTwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idpAuthTicket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HSPTwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "twitter ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/hangame/hsp/HSPSns;->reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;->this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
