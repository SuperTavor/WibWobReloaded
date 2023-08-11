.class Lcom/hangame/hsp/sns/HSPFacebookService$22$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$22;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$22$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$22$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$22;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$22$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;

    iget-object v1, v1, Lcom/hangame/hsp/sns/HSPFacebookService$22;->val$fbIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$22$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPFacebookService$22;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestGetMyFriendMnoList(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$22$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$22;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$22;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
