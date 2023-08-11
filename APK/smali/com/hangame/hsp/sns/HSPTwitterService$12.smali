.class Lcom/hangame/hsp/sns/HSPTwitterService$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService$12;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/sns/HSPTwitterService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
