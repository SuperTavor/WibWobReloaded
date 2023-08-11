.class Lcom/hangame/hsp/sns/HSPTwitterService$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$4;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$4;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPTwitterService"

    const-string v1, "mashup Logout success!! "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$4;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-static {v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->unAuth()Z

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$4;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;->onLogout(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
