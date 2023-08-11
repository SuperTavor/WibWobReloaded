.class Lcom/hangame/hsp/core/HSPInternalState$LoginLockTimerTask;
.super Ljava/util/TimerTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HSPInternalState"

    const-string v1, "LoginLockTimerTask"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    return-void
.end method
