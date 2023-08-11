.class public Lcom/toastgamenew/hsp/auth/login/ToastLoginService;
#.super Lcom/hangame/hsp/auth/login/LoginService;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastLoginService"

.field private static mIdpClassNmList:Ljava/util/List;

.field public static mIdpLoginMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.toastgamenew.hsp.auth.login.ToastgameNewLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.toastgamenew.hsp.auth.login.OneBuildLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.toastgame.hsp.auth.fblogin.FacebookLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.toastgame.hsp.auth.hanlogin.HangameLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.toastgame.hsp.auth.naverlogin.NaverLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.toastgame.hsp.auth.paycologin.PaycoLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.toastgame.hsp.auth.linelogin.LineLoginService"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.toastgame.hsp.auth.baidulogin.BaiduLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.toastgame.hsp.auth.toast360login.Toast360LoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.toastgame.hsp.auth.milogin.MiLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.toastgame.hsp.auth._37login._37LoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.toastgame.hsp.auth.uclogin.UcLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.toastgame.hsp.auth.bilibililogin.BiliBiliLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.toastgame.hsp.auth.flymelogin.FlymeLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.toastgame.hsp.auth.hanjp.emaillogin.HanEmailJpLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.toastgame.hsp.auth.hanjp.oauthlogin.HangameJpLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.toastgame.hsp.auth.huaweilogin.HuaweiLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.toastgame.hsp.auth.oppologin.OppoLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.toastgame.hsp.auth.lenovologin.LenovoLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.toastgame.hsp.auth.anzhilogin.AnzhiLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.toastgame.hsp.auth.wandjlogin.WandouLoginService"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.toastgame.hsp.auth.vivo.VivoLoginService"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpClassNmList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #invoke-direct {p0}, Lcom/hangame/hsp/auth/login/LoginService;-><init>()V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;

    invoke-virtual {v0, p1}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->initialize(Landroid/content/Context;)V

    const-string v0, "ToastLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ToastLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ToastLoginService"

    const-string v1, "initialize"

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    #invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    const-string v0, "auth.login.webview"

    const-class v1, Lcom/toastgamenew/hsp/auth/login/view/ToastLoginWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false&_topbarShow=false"

  #  invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpClassNmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->createInstance(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;

    invoke-direct {v0}, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;-><init>()V

    #invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->setLoginService(Lcom/hangame/hsp/auth/login/LoginService;)V

    const-string v0, "ToastLoginService"

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public appLogin(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not Supported Method: appLogin"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdpData(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ToastLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdpData : oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oAuthData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    #invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login.oauthprovider"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToastLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIdpData : curProvider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;

    if-eqz v0, :cond_0

    #invoke-virtual {v0, p1, p2}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
   # invoke-super {p0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    const-string v0, "ToastLoginService"

    const-string v1, "getUserId"

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

   # invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "ToastLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login : oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login.oauthprovider"

    #invoke-static {v0, v1, p2}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;

    if-eqz v0, :cond_0

    #invoke-virtual {v0, p1, p2}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    #invoke-static {p1, p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosToastLoginAPI(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;Z)Z
    .locals 1

    #invoke-static {p1, p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLogin(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public logout()Z
    .locals 4

    const-string v0, "ToastLoginService"

    const-string v1, "logout"

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

   # invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    #invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last.login.oauthprovider"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToastLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logout : lastLoginIdType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;

    const/4 v1, 0x0

    #invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    if-eqz v0, :cond_0

    #invoke-virtual {v0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->logout()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LOGINSERVICE"

   # invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public withdrawAccount()Z
    .locals 4

   # invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

  #  invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last.login.oauthprovider"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToastLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "withdrawAccount : lastLoginIdType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

  #  invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;

    const/4 v1, 0x0

   # invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    if-eqz v0, :cond_0

   # invoke-virtual {v0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->withdrawAccount()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LOGINSERVICE"

   # invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method
