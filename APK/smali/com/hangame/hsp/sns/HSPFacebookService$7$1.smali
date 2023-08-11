.class Lcom/hangame/hsp/sns/HSPFacebookService$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$7;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;)V
    .locals 8

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$7;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v1, v1, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$imageURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v3, v3, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v4, v4, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$link:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v5, v5, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$captionLink:Ljava/lang/String;

    iget-object v6, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v6, v6, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$descriptionLink:Ljava/lang/String;

    iget-object v7, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v7, v7, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$200(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$7$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$7;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$7;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;

    invoke-interface {v0, p1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
