.class public abstract Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "IdpLoginServiceAbstract"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoAndManualLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-string v0, "IdpLoginServiceAbstract"

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

    const-string v0, "last.login.oauthprovider"

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getValPreferenceWithPackg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdpLoginServiceAbstract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastLoginOAuthProvider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosToastAndAutoLoginAPI(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosToastLoginAPI(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initialize(Landroid/content/Context;)V
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "IdpLoginServiceAbstract"

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

    invoke-virtual {p0, p1, p2}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->onlyManualLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public logout()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "IdpLoginServiceAbstract"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public onlyManualLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosToastAndAutoLoginAPI(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public withdrawAccount()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "IdpLoginServiceAbstract"

    const-string v1, "withdrawAccount"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->logout()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method
