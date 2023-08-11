.class public Lcom/hangame/hsp/ui/view/HSPWebView;
.super Lcom/hangame/hsp/ui/WebViewBaseContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPWebView"


# instance fields
.field private mReceiveMessageListener:Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

.field private final mUseHSPWebUiBase:Z


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/WebViewBaseContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    const-string v0, "true"

    const-string v1, "useHSPWebUiBase"

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mUseHSPWebUiBase:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/view/HSPWebView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getHSPJPWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiJPParamMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHSPWebUiJPParamMap()Ljava/util/Map;
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gid"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hver"

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getHSPVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gver"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dname"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_locale"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static getHSPWebUiParamMap()Ljava/util/Map;
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "_device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_osVer"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_timezoneparam"

    invoke-static {}, Lcom/hangame/hsp/util/TimeZoneUtil;->getUTCTimeZoneString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_osNo"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_hspVer"

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getHSPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_countrycode"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_language"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "_adminLocale"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "_memberNo"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_gameNo"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_gameVer"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "_market"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_locale"

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "_serviceDomain"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "_serviceUserId"

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_neoIdAccessToken"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_clientId"

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LANG_TYPE"

    const-string v1, "zh_TW"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_authTicket"

    const-string v1, "1234567890"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "_exMemberNo"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object v2

    :cond_5
    const-string v0, "_authTicket"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "_neoIdAccessToken"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_clientId"

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LANG_TYPE"

    const-string v1, "ja"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "_authTicket"

    const-string v1, "1234567890"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, ""

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService;->getIdpData()Lcom/hangame/hsp/auth/login/LoginService$IdpData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->getIdpDataMap()Ljava/util/Map;

    move-result-object v0

    const-string v3, "user_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v1, "_exMemberNo"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const-string v0, "_authTicket"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "_neoIdAccessToken"

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getExtraData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_clientId"

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "_authTicket"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string v0, "_launchingzone"

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLaunchingZone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    const-string v0, "_authTicket"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private getHSPWebUiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_WEBUIBASE:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHSPWebUrl()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "message.list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->removeAllCookies()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v2, "HSPWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHSPWebUrl(): action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-string v1, "UILAUNCHER"

    const v2, 0xf001

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    return-object v0

    :cond_3
    const-string v2, "gameplus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_GAME_PLUS:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getServerAddress(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPJPWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getGamePlusUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "supports.cscenter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCustomerCenterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPJPWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v2, "supports.notice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_NOTICE:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/HSPServiceProperties;->getServerAddress(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/notice.nhn?gameNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&osType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ANDROID"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v2, "supports.faq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_FAQ_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v2, "supports.terms.privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_PRIVACY_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v2, "supports.terms.personal.collection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_PERSONALINFO_COLLECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v2, "supports.terms.use"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_TERMS_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v2, "supports.terms.hangame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_SMART_TERMS_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v2, "supports.terms.punish"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_PUNISH_INFO_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v2, "supports.toast.event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_TOAST_EVENT_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected getWebUrl()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mUseHSPWebUiBase:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/view/HSPWebView;->getHSPWebUiParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string v0, "HSPWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsAlert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/ui/view/HSPWebView$2;

    invoke-direct {v0, p0, p4}, Lcom/hangame/hsp/ui/view/HSPWebView$2;-><init>(Lcom/hangame/hsp/ui/view/HSPWebView;Landroid/webkit/JsResult;)V

    invoke-static {p3, v0, p4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string v0, "HSPWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsConfirm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/ui/view/HSPWebView$3;

    invoke-direct {v0, p0, p4}, Lcom/hangame/hsp/ui/view/HSPWebView$3;-><init>(Lcom/hangame/hsp/ui/view/HSPWebView;Landroid/webkit/JsResult;)V

    new-instance v1, Lcom/hangame/hsp/ui/view/HSPWebView$4;

    invoke-direct {v1, p0, p4}, Lcom/hangame/hsp/ui/view/HSPWebView$4;-><init>(Lcom/hangame/hsp/ui/view/HSPWebView;Landroid/webkit/JsResult;)V

    invoke-static {p3, v0, v1, p4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mUseUserTitle:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/HSPWebView;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    return-void
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "HSPWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onPause()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mReceiveMessageListener:Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mReceiveMessageListener:Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

    invoke-static {v0}, Lcom/hangame/hsp/HSPMessage;->removeMessageReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;)V

    :cond_0
    return-void
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "HSPWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_WEBVIEW_ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_error/network_error.htm"

    :try_start_0
    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "HSPWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default page not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/hangame/hsp/ui/WebViewBaseContainer;->onResume()V

    const-string v0, "message.list"

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/HSPWebView;->getUiUri()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/ui/view/HSPWebView$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/view/HSPWebView$1;-><init>(Lcom/hangame/hsp/ui/view/HSPWebView;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mReceiveMessageListener:Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/HSPWebView;->mReceiveMessageListener:Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

    invoke-static {v0}, Lcom/hangame/hsp/HSPMessage;->addMessageReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;)V

    :cond_0
    return-void
.end method
