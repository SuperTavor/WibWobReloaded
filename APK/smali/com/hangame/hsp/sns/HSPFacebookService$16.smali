.class Lcom/hangame/hsp/sns/HSPFacebookService$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$16;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$16;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p4, Ljava/lang/String;

    const-string v1, "HSPFacebookService"

    invoke-static {v1, p4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$16;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;->onUserNameReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
