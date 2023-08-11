.class Lcom/hangame/hsp/sns/HSPFacebookService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPAfterLogoutListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$1;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLogout()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$1;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$002(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    return-void
.end method
