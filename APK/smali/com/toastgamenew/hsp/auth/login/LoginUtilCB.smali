.class public abstract Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginUtilCB"

.field private static mLoginWeblock:Lcom/hangame/hsp/util/MutexLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hangame/hsp/util/MutexLock;
    .locals 1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->mLoginWeblock:Lcom/hangame/hsp/util/MutexLock;

    return-object v0
.end method


# virtual methods
.method protected onIdpLogout()V
    .locals 0

    return-void
.end method

.method protected onOAuthLoginListener(Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    return-void
.end method

.method protected onProcessError(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "LoginUtilCB"

    const-string v1, "there is error in getOAuthToken"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onIdpLogout()V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {p0, v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onOAuthLoginListener(Lcom/hangame/hsp/HSPResult;)V

    const-string v0, "auth.login.webview"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    const-string v2, "redirectURL"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarShow"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->mLoginWeblock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v1}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    new-instance v1, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;

    invoke-direct {v1, p0, v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB$1;-><init>(Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->mLoginWeblock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v1}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v1, "LoginUtilCB"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onIdpLogout()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0
.end method
