.class final Lcom/hangame/hsp/auth/login/HSPLoginService$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->suspend()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_OFFLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :goto_0
    const-string v1, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    goto :goto_0
.end method
