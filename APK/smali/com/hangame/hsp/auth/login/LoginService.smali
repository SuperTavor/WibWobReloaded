.class public abstract Lcom/hangame/hsp/auth/login/LoginService;
.super Ljava/lang/Object;


# static fields
.field protected static lock:Ljava/lang/Object;

.field private static loginService:Lcom/hangame/hsp/auth/login/LoginService;

.field private static mIdpData:Lcom/hangame/hsp/auth/login/LoginService$IdpData;

.field protected static sOAuthData:Lcom/hangame/hsp/auth/OAuthData;


# instance fields
.field protected isLoginProcessing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/hangame/hsp/auth/login/LoginService;->mIdpData:Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hangame/hsp/auth/login/LoginService;->lock:Ljava/lang/Object;

    sput-object v1, Lcom/hangame/hsp/auth/login/LoginService;->sOAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/auth/login/LoginService;->isLoginProcessing:Z

    return-void
.end method

.method public static getLoginService()Lcom/hangame/hsp/auth/login/LoginService;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService;->loginService:Lcom/hangame/hsp/auth/login/LoginService;

    return-object v0
.end method

.method public static getOAuthData()Lcom/hangame/hsp/auth/OAuthData;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService;->sOAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-object v0
.end method

.method protected static setLoginService(Lcom/hangame/hsp/auth/login/LoginService;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/auth/login/LoginService;->loginService:Lcom/hangame/hsp/auth/login/LoginService;

    return-void
.end method


# virtual methods
.method public abstract appLogin(Landroid/app/Activity;Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;Lcom/hangame/hsp/core/HSPResHandler;)V
.end method

.method public appLogin(Landroid/app/Activity;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->LOGIN:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/hangame/hsp/auth/login/LoginService;->appLogin(Landroid/app/Activity;Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public appMapping(Landroid/app/Activity;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->MAPPING:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/hangame/hsp/auth/login/LoginService;->appLogin(Landroid/app/Activity;Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService;->mIdpData:Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    return-object v0
.end method

.method public getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService;->mIdpData:Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    return-object v0
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public isLoginProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/auth/login/LoginService;->isLoginProcessing:Z

    return v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "SERVICEDOMAIN"

    const/16 v1, 0x100d

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "SERVICEDOMAIN"

    const/16 v1, 0x100d

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract login(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
.end method

.method public logout()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "SERVICEDOMAIN"

    const/16 v1, 0x100d

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public mappingToAccount()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "SERVICEDOMAIN"

    const/16 v1, 0x100d

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public resetAccount()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "SERVICEDOMAIN"

    const/16 v1, 0x100d

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public setIdpData(Lcom/hangame/hsp/auth/login/LoginService$IdpData;)V
    .locals 0

    sput-object p1, Lcom/hangame/hsp/auth/login/LoginService;->mIdpData:Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    return-void
.end method

.method public setIsLoginProcessing(Z)V
    .locals 3

    const-string v0, "LoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsLoginProcessing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->disableSuspend()V

    :goto_0
    iput-boolean p1, p0, Lcom/hangame/hsp/auth/login/LoginService;->isLoginProcessing:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->enableSuspend()V

    goto :goto_0
.end method

.method public waitLoginResult()V
    .locals 0

    return-void
.end method

.method public withdrawAccount()Lcom/hangame/hsp/HSPResult;
    .locals 1

    const-string v0, "SERVICEDOMAIN"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method
