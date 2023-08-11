.class public Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$FacebookCB;
.super Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookCB"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;-><init>()V

    return-void
.end method


# virtual methods
.method protected onIdpLogout()V
    .locals 3

    const-string v0, "FacebookCB"

    const-string v1, "onIdpLogout"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "FacebookCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session.getActiveSession():close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    :cond_0
    #invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    return-void
.end method

.method protected onOAuthLoginListener()V
    .locals 2

    const-string v0, "FacebookCB"

    const-string v1, "onOAuthLoginListener"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
