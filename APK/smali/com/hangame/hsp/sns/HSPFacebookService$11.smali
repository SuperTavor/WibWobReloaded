.class Lcom/hangame/hsp/sns/HSPFacebookService$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$11;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$11;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$11;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;->onAppRequestSend(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
