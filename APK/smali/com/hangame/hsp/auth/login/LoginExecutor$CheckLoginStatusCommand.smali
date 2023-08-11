.class Lcom/hangame/hsp/auth/login/LoginExecutor$CheckLoginStatusCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/auth/login/LoginExecutor$Command;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$CheckLoginStatusCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/hangame/hsp/HSPResult;
    .locals 5

    const-string v0, "LoginExecutor"

    const-string v1, "CheckLoginStatusCommand"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkLoggedIn()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v1

    const v2, -0x7effefed

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :goto_0
    const-string v1, "LOGINSERVICE"

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$CheckLoginStatusCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v1}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$800(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;

    iget-object v3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$CheckLoginStatusCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
