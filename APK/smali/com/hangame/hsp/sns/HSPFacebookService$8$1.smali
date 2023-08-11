.class Lcom/hangame/hsp/sns/HSPFacebookService$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$8;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$8$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$8$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$8;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$8$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;

    iget-object v1, v1, Lcom/hangame/hsp/sns/HSPFacebookService$8;->val$fbIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$8$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPFacebookService$8;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestQueryHSPMemberNosList(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$8$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$8;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$8;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
