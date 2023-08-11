.class final Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic val$fbClientId:Ljava/lang/String;

.field final synthetic val$fbConsumerKey:Ljava/lang/String;

.field final synthetic val$fbConsumerSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbClientId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "FbLoginUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionState::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBPublishPermissions:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBPublishPermissions:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    sget-object v1, Lcom/facebook/SessionDefaultAudience;->EVERYONE:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    sput-object v4, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBPublishPermissions:Ljava/util/List;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBReadPermissions:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBReadPermissions:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    sget-object v1, Lcom/facebook/SessionDefaultAudience;->EVERYONE:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    sput-object v4, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mFBReadPermissions:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    const-string v0, "FbLoginUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ facebook consumerkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " consumerSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accesstoken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "silos.login.facebook.accesstoken"

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLoginUrlMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    const-string v1, "toastLoginUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tokenLogin.nhn?snsCd=facebook&clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&snsClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&snsClientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;->val$fbConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&snsToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isToastType()Z

    move-result v1

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&agreeYn=Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isToastType()Z

    move-result v1

    if-ne v1, v3, :cond_6

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v1

    sget-object v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->LOGIN:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v2}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    const-string v1, "auth.login"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    :goto_2
    const-string v2, "weburl"

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oAuthProviderName"

    const-string v2, "facebook"

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&agreeYn=N&returnType=JSON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v1

    sget-object v2, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->MAPPING:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-virtual {v2}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v1, "auth.mapping"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "mappingOverwriteYN"

    const-string v3, "N"

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "auth.mapping"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "mappingOverwriteYN"

    const-string v3, "Y"

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    new-instance v1, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$FacebookCB;

    invoke-direct {v1}, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$FacebookCB;-><init>()V

    invoke-static {v0, v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->loginByOAuthWithTokenUrl(Ljava/lang/String;Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_0

    const-string v0, "FbLoginUtil"

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log in attempt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const v1, -0x7eff2ffe

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetailCode(I)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isToastType()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "hsp.auth.facebook.login.fail.alert.title"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hsp.auth.facebook.login.fail.alert"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1$1;

    invoke-direct {v2, p0}, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1$1;-><init>(Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;)V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method
