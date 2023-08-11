.class public final Lcom/toastgame/hsp/auth/fblogin/FacebookLoginService;
.super Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookLoginService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "FacebookLoginService"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    const-string v0, "auth.login.facebook"

    const-class v1, Lcom/toastgame/hsp/auth/fblogin/view/FacebookLoginView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false&_topbarShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/HSPOAuthProvider;->FACEBOOK:Lcom/hangame/hsp/HSPOAuthProvider;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "FacebookLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login : oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/toastgame/hsp/auth/fblogin/FacebookLoginService;->autoAndManualLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public logout()Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "FacebookLoginService"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "FacebookLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session.getActiveSession():"

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

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FacebookLoginService"

    const-string v2, "logout error"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
