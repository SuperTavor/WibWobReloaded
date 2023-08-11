.class public Lcom/hangame/hspls/api/ToastSilosConnectorApi;
.super Lcom/hangame/hspls/api/SilosConnectorApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastSilosConnectorApi"

.field private static silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;-><init>()V

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hspls/api/SilosConnectorApi;-><init>()V

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->initSilosBiData()V

    return-void
.end method

.method private getClientId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "login.oauthprovider"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ getClientId(OAuthProvider.BAND) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "band"

    invoke-static {v2}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ getClientId(OAuthProvider.NEID) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "neid"

    invoke-static {v2}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "neid"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "guest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ OAuthProvider.GUEST getClientId(OAuthProvider.BAND) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "band"

    invoke-static {v2}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ OAuthProvider.GUEST getClientId(OAuthProvider.HANGAME) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hangame"

    invoke-static {v2}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hangame"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "hangame"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "toast"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getGuestUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->hasGuestLoginUUID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->loadGuestLoginUUIDNeo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOAuthProvider()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "login.oauthprovider"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "band"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "neid"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "toast"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "toast"

    goto :goto_0
.end method

.method public static getSilosBiData()Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;
    .locals 2

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->gameUUID:Ljava/lang/String;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->gameUUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->deviceIdentifier:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->deviceOS:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->deviceModel:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->telecom:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->gameClientVersion:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->marketCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getHSPVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->hspVersion:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->networkingType:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->clientIP:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->osNo:I

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method private initSilosBiData()V
    .locals 2

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "initSilosBiData: "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getAdId()Ljava/util/HashMap;

    invoke-static {}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getSilosBiData()Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    move-result-object v0

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->reserved:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->setAdIdToBiData(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method private replaceHangameErrorMessage(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hspls/HandleResponse;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    const v1, 0x140067

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    const/16 v1, 0x146d

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    const v1, 0x11017

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hspls/HandleResponse;->getResultCode()I

    move-result v0

    const v1, 0x14006d

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hsp.toast.auth.login.hid.alert.alreadymapped"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v0, "hsp.auth.login.hid.alert.alreadymapped"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCommonData(Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-wide v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionId:J

    iput-wide v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->sessionID:J

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->serviceDomain:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mMachineID:Ljava/lang/String;

    iput-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->machineID:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mMacAddress:Ljava/lang/String;

    iput-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->mac:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mDeviceId:Ljava/lang/String;

    iput-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->udid:Ljava/lang/String;

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->gameNo:I

    const/4 v0, 0x2

    iput v0, p1, Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;->osNo:I

    return-void
.end method


# virtual methods
.method public checkLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
    .locals 5

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLoginStatusToast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v2, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLoginStatusNeo oAuthProvider : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, -0x7effefed

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v1

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_2
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastCheckLoginStatus;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->isLoggedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public createInfoByLoginTp(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    .locals 4

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    :goto_0
    iget-wide v2, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    iput-wide v2, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->birth:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->birth:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthProvider:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthUserID:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserID:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserNickName:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->photoURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->photoURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->thumbnailURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->thumbnailURL:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->idType:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->displayName:Ljava/lang/String;

    const-string v1, "ToastSilosConnectorApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jjw LoginTp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->access$000(Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reseved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->reserved:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->getValue()I

    move-result v1

    sget-object v2, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->LOGINBYOAUTH:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    invoke-virtual {v2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->reserved:Ljava/lang/String;

    iput-object v1, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->reserved:Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    invoke-direct {v0}, Lcom/hangame/hsp/auth/login/LoginMemberInfo;-><init>()V

    goto :goto_0
.end method

.method public createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    .locals 1

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->UPDATE:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    invoke-virtual {p0, p1, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createInfoByLoginTp(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public createLoginMemberInfoOfLoginByOAuth(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    .locals 1

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->LOGINBYOAUTH:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    invoke-virtual {p0, p1, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createInfoByLoginTp(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public deleteGuestLoginAuthData()V
    .locals 0

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->deleteGuestLoginUUID()V

    return-void
.end method

.method public deviceLogin()Lcom/hangame/hspls/HandleResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->guestLogin()Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    return-object v0
.end method

.method public exportByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultMemberResult(Z)Lcom/hangame/hsp/auth/login/DefaultMemberResult;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "ToastSilosConnectorApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultMemberResult() => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->serviceDomain:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->oAuthProvider:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->machineID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->mac:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->udid:Ljava/lang/String;

    const-string v2, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "machineID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->machineID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " |mac : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " |udid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->udid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGetDefaultMemberNo;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->Load([BI)I

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;

    invoke-direct {v0}, Lcom/hangame/hsp/auth/login/DefaultMemberResult;-><init>()V

    iget-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->defaultMemberNo:J

    iput-wide v4, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultMemberNo:J

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->defaultNickname:Ljava/lang/String;

    iput-object v3, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultNickname:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->isMapping:Z

    iput-boolean v3, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->isMapping:Z

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->returnMessage:Ljava/lang/String;

    iput-object v3, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->returnMessage:Ljava/lang/String;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGetDefaultMemberNo;->reserved:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->reserved:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public getDefaultNickname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getDefaultMemberResult(Z)Lcom/hangame/hsp/auth/login/DefaultMemberResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/DefaultMemberResult;->defaultNickname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;
    .locals 6

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "getRecommendLoginType()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRecommendLoginType;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRecommendLoginType;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRecommendLoginType;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRecommendLoginType;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;

    invoke-direct {p0, v2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->setCommonData(Lcom/hangame/hsp/xdr/hsp13/request/LoginReqCommonData;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRecommendLoginType;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->sessionID:J

    iput-wide v4, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionId:J

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->loginTypeRecommendedByServer:I

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->lastLoggedInIDPUserID:Ljava/lang/String;

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->defaultNickname:Ljava/lang/String;

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->defaultNickname:Ljava/lang/String;

    :cond_0
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRecommendLoginType;->loginTypeRecommendedByServer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionAuthData()Ljava/lang/String;
    .locals 2

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "getSessionAuthData()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "neo^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toast^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    .locals 6

    const v0, 0x14ff0

    const-string v1, "ToastSilosConnectorApi"

    const-string v2, "getTransferkey()"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getTransferKeyValidTime()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    const-string v1, "ToastSilosConnectorApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration valideTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;-><init>(Lcom/hangame/hspls/api/ToastSilosConnectorApi;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-wide v4, v3, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->memberNo:J

    iget v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->gameNo:I

    iput v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->validTime:I

    const-string v0, ""

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->reserved:Ljava/lang/String;

    const-string v0, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTransferkey send data ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->memberNo:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->gameNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetTransferKey;->validTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public guestLogin()Lcom/hangame/hspls/HandleResponse;
    .locals 5

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "guestLoginToast()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "guest"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->oAuthProvider:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->clientID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->token:Ljava/lang/String;

    :cond_0
    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->gameNo:I

    const-string v2, "client"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->endpoint:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->hasGuestLoginUUID()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->loadGuestLoginUUIDNeo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->clientUUID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_DeviceLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x1

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hspls/api/AuthDataManager;->saveLoginAuthDataNeo(Ljava/lang/String;)V

    const-string v1, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guestLogin() : lastLoginIdType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v4, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v4, v4, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "last.login.oauthprovider"

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v3, v3, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v1

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_1
    :goto_2
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V

    :goto_3
    return-object v0

    :cond_2
    const-string v2, "toast"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->oAuthProvider:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameRoyal()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->clientUUID:Ljava/lang/String;

    :goto_4
    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->clientUUID:Ljava/lang/String;

    invoke-static {v2}, Lcom/hangame/hspls/api/GuestLoginDataManager;->saveLoginAuthData(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getGuestUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastGuestLogin;->clientUUID:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, -0x7effff91

    if-eq v1, v3, :cond_7

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, 0x14006f

    if-ne v1, v3, :cond_1

    :cond_7
    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastGuestLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public hasGuestLoginAuthData()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->hasGuestLoginUUID()Z

    move-result v0

    return v0
.end method

.method public hasLoginAuthData()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->hasLoginAuthDataNeo()Z

    move-result v0

    return v0
.end method

.method public idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
    .locals 5

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idpAutoLoginToast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v1}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    const-string v0, "idpAutoLogin"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->token:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    const-string v0, "user_id"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->nickname:Ljava/lang/String;

    const-string v0, "profile_image_url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->profileImageURL:Ljava/lang/String;

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->clientID:Ljava/lang/String;

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->gameNo:I

    const-string v0, "client"

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->endpoint:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->clientUUID:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastAutoLogin;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->Load([BI)I

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPAutoLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x3

    iput v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthUserID:Ljava/lang/String;

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hspls/api/AuthDataManager;->saveLoginAuthDataNeo(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v0

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v0, v3, :cond_1

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->hasGuestLoginUUID()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v0, :cond_2

    const-string v0, "ToastSilosConnectorApi"

    const-string v3, "======================>>>>>>>>>>>>>> AuthDataManager.clearLoginAuthData()"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->clearLoginAuthData()V

    :cond_2
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->returnMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V

    const-string v0, "idpAutoLogin"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    const/16 v0, 0x4001

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, -0x7effff91

    if-eq v0, v3, :cond_5

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, 0x14006f

    if-ne v0, v3, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastAutoLogin;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_1
.end method

.method public importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
    .locals 10

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginByOAuthToast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|oauthData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idpDataMap2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v1}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;-><init>()V

    const-string v0, "hangameEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "hangame"

    :cond_0
    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v5}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    const-string v0, "user_id"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->nickname:Ljava/lang/String;

    const-string v0, "profile_image_url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->profileImageURL:Ljava/lang/String;

    iput-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    :cond_1
    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v0

    const-string v4, "toast"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenSecret:Ljava/lang/String;

    iget-wide v6, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-wide v6, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenExpireTime:J

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->clientID:Ljava/lang/String;

    iget v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->gameNo:I

    const-string v3, "client"

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->endpoint:Ljava/lang/String;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthProvider:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->Save()[B

    move-result-object v0

    const-string v2, "Login"

    invoke-static {v2}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v2

    const-string v0, "Login"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Login"

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileData()Ljava/util/Map;

    move-result-object v0

    const-string v5, "Login"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileData()Ljava/util/Map;

    move-result-object v0

    const-string v5, "LH"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->Load([BI)I

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->deleteGuestLoginAuthData()V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfoOfLoginByOAuth(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthUserID:Ljava/lang/String;

    iput-object v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    const-string v2, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginByOAuth() : lastLoginIdType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v4, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v4, v4, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "last.login.oauthprovider"

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v3, v3, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->oAuthAccessToken:Ljava/lang/String;

    iput-object v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->oAuthAccessToken:Ljava/lang/String;

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->token:Ljava/lang/String;

    invoke-static {v2}, Lcom/hangame/hspls/api/AuthDataManager;->saveLoginAuthDataNeo(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v1, v2}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->returnMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_4
    const-string v4, "band"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_1
    const-string v4, "neid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthRefreshToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->refreshToken:Ljava/lang/String;

    iget-wide v6, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-wide v6, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenExpireTime:J

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    goto/16 :goto_0

    :cond_6
    const-string v4, "hangame"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    iget-object v5, p2, Lcom/hangame/hsp/auth/OAuthData;->extra:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v5, 0x2

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v3}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLoginByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    goto/16 :goto_0

    :cond_7
    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, -0x7effff91

    if-eq v2, v3, :cond_8

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, 0x14006f

    if-ne v2, v3, :cond_3

    :cond_8
    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLoginByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public logout()Lcom/hangame/hspls/HandleResponse;
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "logoutNeo()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->clientID:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "neid"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->oAuthProvider:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->token:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastLogout;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->clearLoginAuthData()V

    :cond_2
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastLogout;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
    .locals 8

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "mapByOAuthToast()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v3}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;-><init>()V

    iget-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const-string v0, "hangameEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "hangame"

    :goto_0
    invoke-static {v2}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v5

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "toast"

    move-object v1, v0

    :goto_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v2

    new-instance v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v6}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    const-string v0, "user_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->nickname:Ljava/lang/String;

    const-string v0, "profile_image_url"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->profileImageURL:Ljava/lang/String;

    iput-object v6, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    :cond_0
    const-string v0, "toast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenSecret:Ljava/lang/String;

    iget-wide v6, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenExpireTime:J

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->clientID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->clientUUID:Ljava/lang/String;

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->gameNo:I

    const-string v0, "client"

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->endpoint:Ljava/lang/String;

    iput-object v1, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthProvider:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->token:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-virtual {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->Load([BI)I

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v4, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v4}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v4

    iput v4, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v4, 0x3

    iput v4, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v4}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-object v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthUserID:Ljava/lang/String;

    iput-object v4, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hspls/api/AuthDataManager;->saveLoginAuthDataNeo(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->deleteGuestLoginUUID()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "login.oauthprovider"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapByOAuth() : lastLoginIdType : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v4, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v4, v4, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "last.login.oauthprovider"

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v1, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_4
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v3, v0}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->returnMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->replaceHangameErrorMessage(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_5
    const-string v0, "band"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_3

    :cond_6
    :try_start_1
    const-string v0, "neid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthRefreshToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->refreshToken:Ljava/lang/String;

    iget-wide v6, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenExpireTime:J

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    goto/16 :goto_2

    :cond_7
    const-string v0, "hangame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->extra:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v2, 0x2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    iget-object v2, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastMappingByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_8
    move-object v1, v2

    goto/16 :goto_1

    :cond_9
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;)Lcom/hangame/hspls/HandleResponse;
    .locals 7

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapByOAuthToast() overwriteYN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v2}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {p1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v4

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "toast"

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v6}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    const-string v0, "user_id"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->nickname:Ljava/lang/String;

    const-string v0, "profile_image_url"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->profileImageURL:Ljava/lang/String;

    iput-object v6, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    :cond_0
    const-string v0, "toast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    const/4 v5, 0x2

    iput v5, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->version:I

    invoke-virtual {v4}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKey:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->consumerKeySecret:Ljava/lang/String;

    iget-object v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->token:Ljava/lang/String;

    iget-object v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iput-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenSecret:Ljava/lang/String;

    iget-wide v4, p2, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-wide v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;->tokenExpireTime:J

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    :cond_1
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->clientID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->clientUUID:Ljava/lang/String;

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->gameNo:I

    const-string v0, "client"

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->endpoint:Ljava/lang/String;

    iput-object v1, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->oAuthProvider:Ljava/lang/String;

    invoke-static {p3}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "N"

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->overwriteYN:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->token:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-virtual {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->Load([BI)I

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x3

    iput v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->oAuthUserID:Ljava/lang/String;

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    const-string v0, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapByOAuth() : lastLoginIdType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v4, v4, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v4, v4, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "last.login.oauthprovider"

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v3, v3, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hspls/api/AuthDataManager;->saveLoginAuthDataNeo(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->deleteGuestLoginUUID()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v0

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v0, v3, :cond_3

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_3
    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v2, v0}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->returnMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastReMappingByOAuth;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hangame/hspls/HandleResponse;->setResultData(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->replaceHangameErrorMessage(Lcom/hangame/hspls/HandleResponse;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    iput-object p3, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastReMappingByOAuth;->overwriteYN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public mappingDeviceToIdp(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public printLoginInfo(Ljava/lang/String;Lcom/hangame/hsp/auth/login/LoginMemberInfo;)V
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "memberNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", idType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->idType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oAuthProvider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oAuthUserID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oAuthUserNickName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthUserNickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", photoURL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->photoURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseDevice()Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resetDevice()Lcom/hangame/hspls/HandleResponse;
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "resetDevice()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->serviceDomain:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->machineID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->mac:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->udid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastResetDevice;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->defaultNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_Reset:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->clearLoginAuthData()V

    invoke-static {}, Lcom/hangame/hspls/api/GuestLoginDataManager;->deleteGuestLoginUUID()V

    :cond_0
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastResetDevice;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public setAdIdToBiData(Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdIdToBiData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "EXTERNAL_DEVICEID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "EXTERNAL_DEVICEID"

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getValPreferenceWithPackg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v1, "EXTERNAL_DEVICEID"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-static {p1}, Lcom/hangame/hsp/util/SimpleJsonParser;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setOnline()Lcom/hangame/hsp/HSPResult;
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "requestOnlineToast"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastSetOnline;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastSetOnline;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->serviceDomain:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->memberNo:J

    const-string v2, "client"

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->endpoint:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->clientID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->token:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    :try_start_0
    invoke-virtual {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastSetOnline;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->syncCall([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "HSP Server timeout login failed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastSetOnline;->Load([BI)I

    const-string v0, "ToastSilosConnectorApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ansOnline.header.status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastSetOnline;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastSetOnline;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    const-string v2, "login failed"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1001

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    .locals 6

    const v0, 0x14ff0

    const-string v1, "ToastSilosConnectorApi"

    const-string v2, "transferAccount()"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getTransferKeyValidTime()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    const-string v1, "ToastSilosConnectorApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration valideTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;-><init>(Lcom/hangame/hspls/api/ToastSilosConnectorApi;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v2, v2, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-wide v2, v2, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->memberNo:J

    iget v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->gameNo:I

    const-string v2, "client"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->endpoint:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->transferKey:Ljava/lang/String;

    const-string v2, ">>> previous::: "

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    invoke-virtual {p0, v2, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->printLoginInfo(Ljava/lang/String;Lcom/hangame/hsp/auth/login/LoginMemberInfo;)V

    const-string v2, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transeferAccount send data ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->memberNo:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->gameNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->endpoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqTransferAccount;->transferKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0
.end method

.method public updateLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
    .locals 6

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoginStatusToast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v1}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->token:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getResultCode()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    const-string v0, "user_id"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->userID:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->nickname:Ljava/lang/String;

    const-string v0, "profile_image_url"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;->profileImageURL:Ljava/lang/String;

    iput-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    :cond_1
    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->clientUUID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v0, "ToastSilosConnectorApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLoginStatusToast oAuthProvider : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->clientID:Ljava/lang/String;

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->gameNo:I

    const-string v0, "client"

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->endpoint:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->silosBiData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->biData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqBiData;

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-wide v4, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->memberNo:J

    invoke-virtual {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastUpdateLoginStatus;->Save()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->Load([BI)I

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v3, -0x7effefed

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    invoke-virtual {p0, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->createLoginMemberInfo(Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;)Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v0

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v0, v3, :cond_3

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    :cond_3
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastUpdateLoginStatus;->returnMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public withdrawAccount()Lcom/hangame/hspls/HandleResponse;
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    const-string v1, "withdrawAccountToast()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getOAuthProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    iput-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->serviceDomain:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getClientId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->clientID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getGuestUUID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->clientUUID:Ljava/lang/String;

    iget v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->mGameNo:I

    iput v3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->gameNo:I

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->oAuthProvider:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->loadLoginAuthDataNeo()Lcom/hangame/hspls/api/AuthDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hspls/api/AuthDataManager;->getAutoLoginToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->token:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastWithdrawAccount;->Save()[B

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([B)[B

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;->Load([BI)I

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->defaultNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    sget-object v3, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginType:I

    invoke-static {}, Lcom/hangame/hspls/api/AuthDataManager;->clearLoginAuthData()V

    :cond_1
    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsToastWithdrawAccount;->returnMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ToastSilosConnectorApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;

    move-result-object v0

    goto :goto_0
.end method
