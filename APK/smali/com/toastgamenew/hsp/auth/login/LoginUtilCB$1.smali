.class Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;
.super Ljava/lang/Object;

# interfaces
#.implements Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

#.field final synthetic val$uri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>()V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;->this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    #iput-object p2, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseView()V
    .locals 3

    if-eqz p1, :cond_0

    #iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    if-ne p1, v0, :cond_1

    :cond_0
    #invoke-static {}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->access$000()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v0, "LoginUtilCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseViewEvent.onCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #invoke-static {p0}, Lcom/hangame/hsp/ui/ViewEventManager;->removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4005

    const-string v2, "cancel by User"

    #invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    #invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    iget-object v1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;->this$0:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onIdpLogout()V

    #invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    #invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    #invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    return-void
.end method
