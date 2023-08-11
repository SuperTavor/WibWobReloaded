.class Lcom/hangame/hsp/sns/HSPTwitterService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$3;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$3;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPTwitterService"

    const-string v1, "verifyAuthentication is Success!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$3;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPTwitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyAuthentication Faill!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$3;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$3;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-static {v0, v1}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$100(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    goto :goto_0
.end method
