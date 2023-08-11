.class public final Lcom/toastgamenew/hsp/auth/login/LoginUtil;
.super Ljava/lang/Object;


# static fields
.field public static final LOGIN_TYPE_PARAM:Ljava/lang/String; = "LoginType"

.field private static final TAG:Ljava/lang/String; = "LoginUtil"

.field public static mFBPublishPermissions:Ljava/util/List;

.field public static mFBReadPermissions:Ljava/util/List;

.field public static mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

.field private static mOAuthLoginCB:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

.field public static final mResultObj:Lcom/hangame/hsp/HSPResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBPublishPermissions:Ljava/util/List;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBReadPermissions:Ljava/util/List;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mOAuthLoginCB:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4001

    const-string v2, "wrong OAuthToken"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;
    .locals 0

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mOAuthLoginCB:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    return-object p0
.end method

.method public static addFBPublishPermissions(Ljava/util/List;)V
    .locals 3

    const-string v0, "LoginUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFBPublishPermissions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBPublishPermissions:Ljava/util/List;

    return-void
.end method

.method public static addFBReadPermissions(Ljava/util/List;)V
    .locals 3

    const-string v0, "LoginUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFBReadPermissions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBReadPermissions:Ljava/util/List;

    return-void
.end method

.method public static handleResult(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "LoginUtil"

    const-string v1, "handleResult : "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mOAuthLoginCB:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mOAuthLoginCB:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    invoke-virtual {v0, p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onOAuthLoginListener(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/auth/login/LoginService;->setIsLoginProcessing(Z)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isToastType()Z

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, -0x7effff91

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x14006f

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$5;

    invoke-direct {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$5;-><init>()V

    invoke-static {p0, v0}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0
.end method

.method public static loginByOAuth(Lcom/hangame/hsp/auth/OAuthData;Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;)V
    .locals 3

    invoke-virtual {p1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "toast"

    new-instance v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$2;

    invoke-direct {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$2;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "toast"

    const-string v1, "N"

    new-instance v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil$3;

    invoke-direct {v2}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$3;-><init>()V

    invoke-static {v0, p0, v1, v2}, Lcom/hangame/hsp/auth/login/HSPLoginService;->mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_1
    const-string v0, "toast"

    const-string v1, "Y"

    new-instance v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil$4;

    invoke-direct {v2}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$4;-><init>()V

    invoke-static {v0, p0, v1, v2}, Lcom/hangame/hsp/auth/login/HSPLoginService;->mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static loginByOAuthWithTokenUrl(Ljava/lang/String;Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)V
    .locals 2

    const-string v0, "LoginUtil"

    const-string v1, "loginByOAuthWithTokenUrl"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    const-string v0, "IDPLogin"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;-><init>(Ljava/lang/String;Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
