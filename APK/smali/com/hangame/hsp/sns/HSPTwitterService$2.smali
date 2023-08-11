.class Lcom/hangame/hsp/sns/HSPTwitterService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPAfterResetAccountListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$2;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterResetAccount()V
    .locals 2

    const-string v0, "HSPTwitterService"

    const-string v1, "Reset HSPOAuth Reset"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$2;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$002(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    return-void
.end method
