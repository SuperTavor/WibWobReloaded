.class Lcom/hangame/hsp/sns/HSPFacebookService$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$17;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    .locals 5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/sns/HSPFacebookService$17$1$1;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService$17$1;)V

    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSPFacebookService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HSPFacebookService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccessToken() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;

    iget-object v4, v4, Lcom/hangame/hsp/sns/HSPFacebookService$17;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v4}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;

    iget-object v3, v3, Lcom/hangame/hsp/sns/HSPFacebookService$17;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v3}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;

    iget-object v4, v4, Lcom/hangame/hsp/sns/HSPFacebookService$17;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v4}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v1, v3, v4, v0}, Lcom/hangame/hsp/HSPSns;->reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$17$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$17;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$17;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
