.class Lcom/hangame/hsp/sns/HSPFacebookService$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$5;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$5;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p4, Ljava/lang/String;

    const-string v0, "HSPFacebookService"

    invoke-static {v0, p4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$5;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$5;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
