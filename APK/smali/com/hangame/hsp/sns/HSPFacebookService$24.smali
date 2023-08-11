.class Lcom/hangame/hsp/sns/HSPFacebookService$24;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;

.field final synthetic val$fbIdList:Ljava/util/List;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$fbIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    .locals 4

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPFacebookService"

    const-string v1, "verifyAuthentication is Success!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$fbIdList:Ljava/util/List;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$700(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPFacebookService"

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

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$24;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    const/4 v1, 0x1

    new-instance v2, Lcom/hangame/hsp/sns/HSPFacebookService$24$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/sns/HSPFacebookService$24$1;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService$24;)V

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/sns/HSPFacebookService;->login(ZLcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    goto :goto_0
.end method
