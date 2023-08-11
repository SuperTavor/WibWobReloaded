.class final Lcom/hangame/hsp/auth/login/HSPSilosService$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;


# instance fields
.field final synthetic val$uri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$8;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseView(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$8;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseViewEvent.onCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/ui/ViewEventManager;->removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->isLoginProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method
