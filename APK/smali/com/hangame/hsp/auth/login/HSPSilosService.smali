.class public final Lcom/hangame/hsp/auth/login/HSPSilosService;
.super Ljava/lang/Object;


# static fields
.field public static final ADID_KEY:Ljava/lang/String; = "EXTERNAL_DEVICEID"

.field private static final HANGAME_CLASS_NM:Ljava/lang/String; = "com.hangame.hspls.api.HangameKRSilosConnectorApi"

.field private static final NEO_CLASS_NM:Ljava/lang/String; = "com.hangame.hspls.api.NeoSilosConnectorApi"

.field private static final TAG:Ljava/lang/String; = "HSPSilosService"

.field private static final TOAST_CLASS_NM:Ljava/lang/String; = "com.hangame.hspls.api.ToastSilosConnectorApi"

.field private static mAdIdMap:Ljava/util/HashMap;

.field private static mHangameSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

.field private static mManualLoginResult:Lcom/hangame/hsp/HSPResult;

.field private static mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

.field private static mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

.field private static mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

.field private static mToastSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()Lcom/hangame/hspls/api/SilosConnectorApi;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    return-object v0
.end method

.method static changeGuestMemberNo()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "changeGuestMemberNo()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchChangeGuestMemberNoView()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static checkLoggedIn()Lcom/hangame/hspls/HandleResponse;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "HSPSilosService"

    const-string v2, "checkLoggedIn()"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "band"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "facebook"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "91"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v2

    if-ltz v2, :cond_3

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->checkLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v2

    if-ltz v2, :cond_3

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->checkLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->checkLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private static checkSilosConnector()Z
    .locals 2

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "HSPSilosService"

    const-string v1, "Silos Connector is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createInstance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hspls/api/SilosConnectorApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static deviceLogin()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "deviceLogin"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->deviceLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static exportByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportByOAuth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hspls/api/SilosConnectorApi;->exportByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentState(Lcom/hangame/hsp/core/HSPInternalState;)V

    :goto_0
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    :cond_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentState(Lcom/hangame/hsp/core/HSPInternalState;)V

    goto :goto_0
.end method

.method public static getAdId()Ljava/util/HashMap;
    .locals 5

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->setAdIdToBiData(Ljava/util/HashMap;)V

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.hangame.hsp.cgp.core.CGPService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/hangame/hsp/auth/login/HSPSilosService$1;

    invoke-direct {v4}, Lcom/hangame/hsp/auth/login/HSPSilosService$1;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "HSPSilosService"

    const-string v1, "there is problem with CGPService class"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mAdIdMap:Ljava/util/HashMap;

    const-string v0, "EXTERNAL_DEVICEID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDefaultNickname()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getDefaultNickname()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExtraData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getExtraData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFacebookMappingUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 3

    const-string v0, "auth.login.facebook"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "oAuthProviderName"

    const-string v2, "facebook"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mappingOverwriteYN"

    invoke-virtual {v0, v1, p0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.facebook.katana"

    invoke-static {v1}, Lcom/hangame/hsp/util/AppUtil;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_topbarShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    invoke-virtual {p0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    :goto_0
    const-string v1, "LOGINSERVICE"

    invoke-virtual {p0}, Lcom/hangame/hspls/HandleResponse;->getResultString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :sswitch_0
    const/16 v0, 0x1014

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1002

    goto :goto_0

    :sswitch_2
    const-string v0, "ALREADY_MEMBERNO"

    invoke-virtual {p0}, Lcom/hangame/hspls/HandleResponse;->getResultData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7fff3fff -> :sswitch_1
        0x270e -> :sswitch_0
        0x14006c -> :sswitch_2
        0x14006d -> :sswitch_2
    .end sparse-switch
.end method

.method public static getHangameJapanWelcomeURI(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "hsp.hangame.jp.pref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/hangame/hspls/api/SilosConnectorApi;->getDefaultMemberResult(Z)Lcom/hangame/hsp/auth/login/DefaultMemberResult;

    move-result-object v0

    iget-wide v2, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultMemberNo:J

    cmp-long v2, v2, v8

    if-gtz v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, v4}, Lcom/hangame/hspls/api/SilosConnectorApi;->getDefaultMemberResult(Z)Lcom/hangame/hsp/auth/login/DefaultMemberResult;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wifiUpperCase"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v2, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultNickname:Ljava/lang/String;

    const-string v3, "HSPSilosService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@ hangame launchview defaultMemberNo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultMemberNo:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " |isMapping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->isMapping:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultMemberNo:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    iget-boolean v0, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->isMapping:Z

    if-nez v0, :cond_1

    const-string v0, "weburl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getNeoWelcomePageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&nn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {p0, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isMapping"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wifiUpperCase"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const-string v0, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getNeoWelcomePageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {p0, v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isMapping"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public static getLastLoginId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getLastLoginId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getLoginResult()Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPSilosService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLoginResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const/16 v2, 0x1002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    const/4 v2, 0x0

    sput-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLoginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getLoginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v0

    return-object v0
.end method

.method public static getMemberAge()I
    .locals 2

    const/4 v1, -0x1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getMemberDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->displayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemberIDPUserID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemberIDType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getLoginMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemberNickname()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserNickName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemberNo()J
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getMemberOAuthProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNotInitializedResult()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthAccessToken()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "facebook"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silos.login.facebook.accesstoken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "google"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silos.login.google.accesstoken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "naver"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silos.login.naver.accesstoken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "linegame"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silos.login.line.accesstoken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "facebook"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "facebook_access_token"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "HSPSilosService"

    const-string v3, "json error"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getOAuthInfo()Lcom/hangame/hsp/auth/OAuthInfo;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/hangame/hsp/auth/OAuthInfo;

    iget-object v2, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserID:Ljava/lang/String;

    iget-object v1, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/hangame/hsp/auth/OAuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionAuthData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getSessionAuthData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static guestLogin()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "guestLogin"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "band"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@1 idpAutoLogin, idpData.getResultCode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v1

    if-ltz v1, :cond_2

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@2 mSilosConnectorApi.idpAutoLogin, response.getResultCode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@3 HSPResult.getResult()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LOGINSERVICE"

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gsquare"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "G square : Channel ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_4

    const-string v2, "CLIENT_ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, v2}, Lcom/hangame/hspls/api/SilosConnectorApi;->idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importByOAuth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hspls/api/SilosConnectorApi;->importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized initLoginResult()V
    .locals 2

    const-class v1, Lcom/hangame/hsp/auth/login/HSPSilosService;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static initialize()V
    .locals 3

    const-string v0, "HSPSilosService"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login.oauthprovider"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "naver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    if-nez v0, :cond_1

    const-string v0, "com.hangame.hspls.api.NeoSilosConnectorApi"

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->createInstance(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    :cond_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    :goto_0
    const-string v0, "HSPSilosService"

    const-string v1, "initialize end"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mHangameSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    if-nez v0, :cond_3

    const-string v0, "com.hangame.hspls.api.HangameKRSilosConnectorApi"

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->createInstance(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mHangameSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    :cond_3
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mHangameSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToastSilosConnectorApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mToastSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mToastSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    if-nez v0, :cond_6

    const-string v0, "com.hangame.hspls.api.ToastSilosConnectorApi"

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->createInstance(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mToastSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    :cond_6
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mToastSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    if-nez v0, :cond_8

    const-string v0, "com.hangame.hspls.api.NeoSilosConnectorApi"

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->createInstance(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    :cond_8
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mNeoSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    goto :goto_0
.end method

.method private static lastLaunchAuthViewHangameJp(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAuthView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_5

    const-string v0, "hangame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auth.login.oauth"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "oAuthProviderName"

    const-string v2, "hangame"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_button_title"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_history"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "weburl"

    invoke-static {p1}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getLoginHangameJpPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$3;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$3;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_6

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->waitLoginResult()V

    :cond_1
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string v0, "email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "auth.login.oauth"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "oAuthProviderName"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_button_title"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_history"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "auth.login.facebook"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "oAuthProviderName"

    const-string v2, "facebook"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "auth.login"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild Auth View Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static lastOAuthProvider()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "hsp.hangame.jp.pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "logintype"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hangamejp_email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "email"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "hangamejp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "hangame"

    goto :goto_0
.end method

.method private static launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;
    .locals 5

    const/4 v3, 0x0

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAuthView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_5

    const-string v0, "auth.welcome"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getDefaultNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname"

    invoke-virtual {v0, v2, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hsp.hangame.jp.pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "guestMapping"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isUseJoga()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auth.agreement"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAgreementYes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getAgreementPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarShow"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarCloseShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$5;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$5;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_9

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->waitLoginResult()V

    :cond_1
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHangameJapanWelcomeURI(Lcom/hangame/hsp/ui/HSPUiUri;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHangameJapanWelcomeURI(Lcom/hangame/hsp/ui/HSPUiUri;)V

    goto :goto_0

    :cond_4
    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getWelcomePageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_6

    const-string v0, "auth.login"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getLoginPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_7

    const-string v0, "auth.mapping"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getMappingPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_EMAIL:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_8

    const-string v0, "auth.mapping.email"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getMappingEmailPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild Auth View Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAuthView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_4

    const-string v0, "naver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auth.login.naver"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    :goto_0
    const-string v1, "weburl"

    invoke-static {p1}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getLoginPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$6;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$6;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_5

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->waitLoginResult()V

    :cond_1
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string v0, "hangame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "auth.login.hangame"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "auth.login"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild Auth View Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static launchAuthView2(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAuthView2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    if-ne p0, v0, :cond_1

    const-string v0, "auth.welcome"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getDefaultNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname"

    invoke-virtual {v0, v2, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hsp.hangame.jp.pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getNeoWelcomePageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isMapping"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$7;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$7;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getWelcomePageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild Auth View Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1
.end method

.method private static launchChangeGuestMemberNoView()Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    const-string v1, "launchChangeGuestMemberNoView"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "auth.welcome"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getChangeMemberNoPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarShow"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarCloseShow"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$4;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$4;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_0

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_0
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static launchNegameMappingView(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchNegameMappingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->ID:Lcom/hangame/hsp/HSPMappingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->HANGAME:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const-string v0, "auth.mapping"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getMappingPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$10;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$10;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_4

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_1
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->TOAST:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_2

    const-string v0, "auth.mapping.email"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->BAND:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_3

    const-string v0, "auth.mapping.band"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild mapping Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static launchToastAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAuthView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth.login."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild oAuthProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "weburl"

    invoke-static {p1}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getToastLoginPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchToastViewAndHndResult(Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static launchToastMappingView(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchToastMappingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->ID:Lcom/hangame/hsp/HSPMappingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->HANGAME:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const-string v0, "auth.mapping"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    const-string v2, "hangame"

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getToastLoginPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oAuthProviderName"

    const-string v2, "hangame"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$8;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$8;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_5

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_1
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->TOAST:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_2

    const-string v0, "auth.mapping"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    const-string v2, "neid"

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getToastLoginPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oAuthProviderName"

    const-string v2, "neid"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->BAND:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_3

    const-string v0, "auth.mapping.band"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    const-string v2, "band"

    invoke-static {v2}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getToastLoginPageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oAuthProviderName"

    const-string v2, "band"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->FACEBOOK:Lcom/hangame/hsp/HSPMappingType;

    if-ne p0, v0, :cond_4

    const-string v0, "N"

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getFacebookMappingUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild mapping Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static launchToastMappingView(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchToastMappingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overwriteYN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth.login."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPMappingType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invaild mapping Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "mappingOverwriteYN"

    invoke-virtual {v0, v1, p1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPMappingType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchToastViewAndHndResult(Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static launchToastViewAndHndResult(Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "oAuthProviderName"

    invoke-virtual {p1, v0, p0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_closecurrentview"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initLoginResult()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$9;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService$9;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_0

    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :goto_0
    const-string v0, "HSPSilosService"

    const-string v1, "getLoginResult before"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "HSPSilosService"

    const-string v1, "ManualLoginlock is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(oAuthProvider= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/auth/login/LoginService;->login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(oAuthProvider= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAuthData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gsquare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CLIENT_ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v1, ""

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iget-wide v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginService;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "poketroket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CLIENT_ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v1, ""

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iget-wide v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-string v0, "neid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "CLIENT_ID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iget-wide v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object p2

    goto :goto_0

    :cond_6
    const-string v0, "band"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CLIENT_ID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iget-wide v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    const/4 p2, 0x0

    goto/16 :goto_0
.end method

.method static login(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(manualLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/auth/login/LoginService;->login(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginByOAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "91"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginByOAuth resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v1

    if-ltz v1, :cond_5

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "LOGINSERVICE"

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1
.end method

.method private static loginWithRetryAutoLoginHangameJp(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getRetryTimes()I

    move-result v2

    const-string v0, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryTimes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPConfiguration;->getRetryTimes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HSPSilosService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idpAutoLogin failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idpAutoLogin OK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static loginWithRetryLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "hangame"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "email"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showAutoLoginAlert(Landroid/app/Activity;)V

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->lastLaunchAuthViewHangameJp(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "guest"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->guestLogin()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static logout()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "logout()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->logout()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->logout()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapByOAuth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hspls/api/SilosConnectorApi;->mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "facebook"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const v2, -0x7effff93

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const v2, 0x14006d

    if-ne v1, v2, :cond_4

    :cond_1
    const-string v1, "HSPSilosService"

    const-string v2, "setLoginResult is ignore"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method

.method public static mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapByOAuth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overwriteYN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hspls/api/SilosConnectorApi;->mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "facebook"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const v2, -0x7effff93

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const v2, 0x14006d

    if-ne v1, v2, :cond_4

    :cond_1
    const-string v1, "HSPSilosService"

    const-string v2, "setLoginResult is ignore"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method

.method public static mappingDeviceToIdp(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mappingDeviceToIdp() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hspls/api/SilosConnectorApi;->mappingDeviceToIdp(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static mappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->mappingToAccount()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->toastMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->negameMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static mappingToAccount(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->toastMappingToAccount(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static negameMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "negameMappingToAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchNegameMappingView(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static releaseDevice()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "releaseDevice"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->releaseDevice()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView2(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method static resetDevice()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "resetDevice()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->resetDevice()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized setLoginResult(Lcom/hangame/hsp/HSPResult;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPSilosService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoginResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    if-nez v0, :cond_2

    sput-object p0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getEventData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "IDPLogin"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "IDPLogin"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDPLogin"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginlock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    const-string v0, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoginResult> already login result exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/auth/login/HSPSilosService;->mManualLoginResult:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setOnline()Lcom/hangame/hsp/HSPResult;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->setOnline()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static showAutoLoginAlert(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$2;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$2;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/util/MutexLock;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    return-void
.end method

.method public static showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoginAlert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/hangame/hsp/util/HSPResultUtil;->getErrorMessage(Lcom/hangame/hsp/HSPResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/auth/login/HSPSilosService$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/hangame/hsp/auth/login/HSPSilosService$11;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/util/MutexLock;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    return-void
.end method

.method public static showPunishAlert(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "showPunishAlert"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/auth/login/HSPSilosService$12;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService$12;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/util/MutexLock;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    return-void
.end method

.method public static silosLogin(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login.oauthprovider"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLoginNeoHangameJP(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "naver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLoginNeo(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLoginToast(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLoginHangameKorea(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosLoginNeo(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static silosLoginAPI(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silosLoginAPI(oAuthProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hangame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "guest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->guestLogin()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "naver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static silosLoginHangameKorea(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 11

    const v10, -0x7efffffa

    const v9, -0x7efffffb

    const v8, 0x14006f

    const v7, -0x7effff91

    const/16 v6, 0x1009

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isEnforcedIdpLogin()Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isHoldIdpLogin()Z

    move-result v2

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasLoginAuthData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    const-string v3, "HSPSilosService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silosLogin(manualLogin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",enforcedIdpLogin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",holdIdpLogin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",loginType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_e

    if-eqz v1, :cond_9

    packed-switch v0, :pswitch_data_0

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid loginType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasGuestLoginAuthData()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isEnforcedGuestLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const-string v2, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idpAutoLogin failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v1, v10, :cond_6

    const v2, 0x140006

    if-eq v1, v2, :cond_6

    if-eq v1, v9, :cond_6

    const v2, 0x140005

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_7
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    packed-switch v0, :pswitch_data_1

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid loginType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->deviceLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    if-eq v1, v8, :cond_0

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const-string v3, "HSPSilosService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idpAutoLogin failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v1, v10, :cond_a

    const v3, 0x140006

    if-eq v1, v3, :cond_a

    if-eq v1, v9, :cond_a

    const v3, 0x140005

    if-ne v1, v3, :cond_b

    :cond_a
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_b
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    if-nez v0, :cond_d

    if-eqz v2, :cond_c

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    if-eqz v1, :cond_f

    packed-switch v0, :pswitch_data_2

    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logged out/reset device : login type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_6
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    packed-switch v0, :pswitch_data_3

    :pswitch_7
    const-string v1, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logged out/reset device : login type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->deviceLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static silosLoginNeo(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silosLoginNeo(manualLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isEnforcedIdpLogin()Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isHoldIdpLogin()Z

    move-result v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasGuestLoginAuthData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isEnforcedGuestLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v0, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silosLoginNeo(manualLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",enforcedIdpLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",holdIdpLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const-string v4, "HSPSilosService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idpAutoLogin failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, -0x7effff91

    if-eq v3, v4, :cond_2

    const v4, 0x14006f

    if-eq v3, v4, :cond_2

    const v4, -0x7efffffa

    if-eq v3, v4, :cond_4

    const v4, 0x140006

    if-eq v3, v4, :cond_4

    const v4, -0x7efffffb

    if-eq v3, v4, :cond_4

    const v4, 0x140005

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_5
    if-eqz p1, :cond_8

    if-eqz v1, :cond_6

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static silosLoginNeoHangameJP(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const/16 v6, 0x1009

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silosLoginNeo(manualLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isEnforcedIdpLogin()Z

    move-result v0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isHoldIdpLogin()Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v2}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasGuestLoginAuthData()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->isEnforcedGuestLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-object v2, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v2}, Lcom/hangame/hspls/api/SilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v2, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silosLoginNeo(manualLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",enforcedIdpLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",holdIdpLogin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->loginWithRetryAutoLoginHangameJp(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    const-string v3, "HSPSilosService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idpAutoLogin last failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, -0x7effff91

    if-eq v2, v3, :cond_2

    const v3, 0x14006f

    if-eq v2, v3, :cond_2

    const v3, -0x7efffffa

    if-eq v2, v3, :cond_4

    const v3, 0x140006

    if-eq v2, v3, :cond_4

    const v3, -0x7efffffb

    if-eq v2, v3, :cond_4

    const v3, 0x140005

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_5
    if-eqz p1, :cond_6

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->lastOAuthProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->loginWithRetryLogin(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_8

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v6}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static silosLoginToast(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silosLoginToast(manualLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isEnforcedIdpLogin()Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isHoldIdpLogin()Z

    move-result v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasGuestLoginAuthData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isEnforcedGuestLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const-string v0, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silosLoginNeo(manualLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",enforcedIdpLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",holdIdpLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const-string v4, "HSPSilosService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "idpAutoLogin failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, -0x7effff91

    if-eq v3, v4, :cond_2

    const v4, 0x14006f

    if-eq v3, v4, :cond_2

    const v4, -0x7efffffa

    if-eq v3, v4, :cond_4

    const v4, 0x140006

    if-eq v3, v4, :cond_4

    const v4, -0x7efffffb

    if-eq v3, v4, :cond_4

    const v4, 0x140005

    if-ne v3, v4, :cond_5

    :cond_4
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_5
    if-eqz p1, :cond_8

    if-eqz v1, :cond_6

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1009

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static silosMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "silosMappingToAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->TOAST:Lcom/hangame/hsp/HSPMappingType;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/HSPMappingType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_EMAIL:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static silosOAuthLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    .locals 5

    const/4 v1, 0x3

    const-string v0, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silosOAuthLogin(oAuthProvider= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oAuthData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->hasLoginAuthData()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    const-string v2, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silosOAuthLogin(oAuthProvider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oAuthData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",loginType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const-string v2, "HSPSilosService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idpAutoLogin failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, -0x7effff91

    if-eq v1, v2, :cond_1

    const v2, 0x14006f

    if-eq v1, v2, :cond_1

    const v2, -0x7efffffa

    if-eq v1, v2, :cond_0

    const v2, 0x140006

    if-eq v1, v2, :cond_0

    const v2, -0x7efffffb

    if-eq v1, v2, :cond_0

    const v2, 0x140005

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method public static silosToastAndAutoLoginAPI(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPSilosService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silosToastLoginAPI(oAuthProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "guest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->guestLogin()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x100a

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchToastAuthView(Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->idpAutoLogin(Landroid/app/Activity;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static silosToastLoginAPI(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->silosToastAndAutoLoginAPI(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static toastMappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "toastMappingToAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchToastMappingView(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static toastMappingToAccount(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "toastMappingToAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->launchToastMappingView(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hspls/api/SilosConnectorApi;->transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateLoginStatus()Lcom/hangame/hsp/HSPResult;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HSPSilosService"

    const-string v1, "updateLoginStatus()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "91"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->updateLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const-string v1, "LOGINSERVICE"

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0, v2}, Lcom/hangame/hspls/api/SilosConnectorApi;->updateLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v1

    if-ltz v1, :cond_6

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->updateLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "LOGINSERVICE"

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method static withdrawAccount()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPSilosService"

    const-string v1, "withdrawAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->checkSilosConnector()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService;->mSilosConnectorApi:Lcom/hangame/hspls/api/SilosConnectorApi;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi;->withdrawAccount()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getHSPResult(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->withdrawAccount()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getNotInitializedResult()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method
