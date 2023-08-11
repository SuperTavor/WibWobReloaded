.class public Lcom/toastgamenew/hsp/auth/login/view/ToastLoginWebView;
#.super Lcom/hangame/hsp/ui/view/ToastWebView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastLoginWebView"


# direct methods
.method public constructor <init>()V
    .locals 2

   # invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/ToastWebView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

   # invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    const/4 v1, 0x0

   # invoke-virtual {v0, v1}, Lcom/hangame/hsp/auth/login/LoginService;->setIsLoginProcessing(Z)V

    const-string v0, "toast"

  #  invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toastgamenew/hsp/auth/login/view/ToastLoginWebView;->mChannelId:Ljava/lang/String;

    const-string v0, "IDPLogin"

    #invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initLoginType()V
    .locals 2

    const-string v0, "ToastLoginWebView"

    const-string v1, "initLoginType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mappingOverwriteYN"

   # invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->OVERWRITE_MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    goto :goto_0
.end method

.method protected loginByOAuth()V
    .locals 2

    const-string v0, "ToastLoginWebView"

    const-string v1, "loginByOAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IDPLogin"

  #  invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

   # invoke-static {p1, v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->loginByOAuth(Lcom/hangame/hsp/auth/OAuthData;Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;)V

    return-void
.end method
