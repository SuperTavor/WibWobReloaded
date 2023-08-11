.class Lcom/hangame/hsp/sns/HSPTwitterService$12$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/sns/HSPTwitterService$12$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService$12$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1$1;->this$2:Lcom/hangame/hsp/sns/HSPTwitterService$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1$1;->this$2:Lcom/hangame/hsp/sns/HSPTwitterService$12$1;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPTwitterService$12$1;->this$1:Lcom/hangame/hsp/sns/HSPTwitterService$12;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPTwitterService$12;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
