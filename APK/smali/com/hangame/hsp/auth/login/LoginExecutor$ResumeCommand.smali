.class Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/auth/login/LoginExecutor$Command;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-string v0, "LoginExecutor"

    const-string v1, "ResumeCommand"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->updateLoginStatus()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, "LoginExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSPSilosService.updateLoginStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->startHeartBeatTask()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
