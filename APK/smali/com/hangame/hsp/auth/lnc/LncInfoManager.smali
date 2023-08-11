.class public Lcom/hangame/hsp/auth/lnc/LncInfoManager;
.super Ljava/lang/Object;


# static fields
.field private static final FALSE:Ljava/lang/String; = "N"

.field private static final LNCKEY_FOR_BRAND_HANGAME:Ljava/lang/String; = "HANGAME"

.field private static final LNCKEY_FOR_BRAND_TOAST:Ljava/lang/String; = "TOAST"

.field private static final LNCKEY_FOR_BRAND_TOASTGAME:Ljava/lang/String; = "TOASTGAME"

.field private static final LNCKEY_FOR_BRAND_TOAST_US:Ljava/lang/String; = "TOAST_US"

.field private static final LNCKEY_FOR_BRAND_TYPE:Ljava/lang/String; = "brandType"

.field private static final LNCKEY_FOR_CACHE_TTL_TIME:Ljava/lang/String; = "cacheTTLSec"

.field private static final LNCKEY_FOR_CGP:Ljava/lang/String; = "cgp"

.field private static final LNCKEY_FOR_CHECK_AUTH_URL:Ljava/lang/String; = "checkAuthUrl"

.field private static final LNCKEY_FOR_CLIENT_KEY:Ljava/lang/String; = "clientAttributes"

.field private static final LNCKEY_FOR_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final LNCKEY_FOR_CUSTOMER_CENTER_URL:Ljava/lang/String; = "csUrl"

.field private static final LNCKEY_FOR_ENFORCED_IDP_LOGIN:Ljava/lang/String; = "ENFORCED_IDP_LOGIN"

.field private static final LNCKEY_FOR_GAMEPLUS:Ljava/lang/String; = "GAME_PLUS"

.field private static final LNCKEY_FOR_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartBeatInterval"

.field private static final LNCKEY_FOR_HOLD_IDP_LOGIN:Ljava/lang/String; = "HOLD_IDP_LOGIN"

.field private static final LNCKEY_FOR_IDPINFO_FACEBOOK4FEED_KEY:Ljava/lang/String; = "facebook4Feed"

.field private static final LNCKEY_FOR_IDP_INFO:Ljava/lang/String; = "idpInfo"

.field private static final LNCKEY_FOR_INDICATORLOG_SERVER:Ljava/lang/String; = "indicatorLogServer"

.field private static final LNCKEY_FOR_LIGHTHOUSE:Ljava/lang/String; = "LIGHTHOUSE"

.field private static final LNCKEY_FOR_LINEGAME_CONFIG_KEY:Ljava/lang/String; = "LGCConfigKey"

.field private static final LNCKEY_FOR_LINEGAME_GCMPROJECTNUM_KEY:Ljava/lang/String; = "LGCGcmProjectNum"

.field private static final LNCKEY_FOR_LINEGAME_URL:Ljava/lang/String; = "LGCGameUrl"

.field private static final LNCKEY_FOR_LNC_NOTICE:Ljava/lang/String; = "lncNotices"

.field private static final LNCKEY_FOR_LOGINABLE:Ljava/lang/String; = "loginable"

.field private static final LNCKEY_FOR_LOGIN_URL:Ljava/lang/String; = "loginUrl"

.field private static final LNCKEY_FOR_LOGTYPE_KEY:Ljava/lang/String; = "logtype"

.field private static final LNCKEY_FOR_MAXRANKING_SIZE:Ljava/lang/String; = "maxRankingSize"

.field private static final LNCKEY_FOR_NELO_ADDRESS:Ljava/lang/String; = "NELO2"

.field private static final LNCKEY_FOR_NELO_HSP_LOG_USE:Ljava/lang/String; = "stabilityStatus"

.field private static final LNCKEY_FOR_NELO_KEY:Ljava/lang/String; = "nelo"

.field private static final LNCKEY_FOR_NELO_LOGLEVEL:Ljava/lang/String; = "logLevel"

.field private static final LNCKEY_FOR_PAYMENT:Ljava/lang/String; = "payment"

.field private static final LNCKEY_FOR_PERSONAL_INFO_COLLECTION_URL:Ljava/lang/String; = "personalInfoCollectionUrl"

.field private static final LNCKEY_FOR_PLAYABLE:Ljava/lang/String; = "playable"

.field private static final LNCKEY_FOR_PUNISH_REASON_URL:Ljava/lang/String; = "punishReasonUrl"

.field private static final LNCKEY_FOR_REAUTH_URL:Ljava/lang/String; = "reAuthUrl"

.field private static final LNCKEY_FOR_SERVER_INFOS:Ljava/lang/String; = "serverInfos"

.field private static final LNCKEY_FOR_SERVICE_DOMAIN:Ljava/lang/String; = "serviceDomain"

.field private static final LNCKEY_FOR_SERVICE_INFO:Ljava/lang/String; = "serviceInfo"

.field private static final LNCKEY_FOR_SNS:Ljava/lang/String; = "sns"

.field private static final LNCKEY_FOR_SNS_CONSUMER_KEY:Ljava/lang/String; = "consumerKey"

.field private static final LNCKEY_FOR_SNS_CONSUMER_SECRET:Ljava/lang/String; = "consumerSecret"

.field private static final LNCKEY_FOR_SNS_REDIRECTION_URL:Ljava/lang/String; = "redirectionUrl"

.field private static final LNCKEY_FOR_STATE:Ljava/lang/String; = "state"

.field private static final LNCKEY_FOR_STATE_MESSAGE:Ljava/lang/String; = "stateMessage"

.field private static final LNCKEY_FOR_TERMS_URL:Ljava/lang/String; = "termsUrl"

.field private static final LNCKEY_FOR_TLOG_APPKEY:Ljava/lang/String; = "appKey"

.field private static final LNCKEY_FOR_TLOG_HSP_LOG_USE:Ljava/lang/String; = "stabilityStatus"

.field private static final LNCKEY_FOR_TLOG_KEY:Ljava/lang/String; = "logncrash"

.field private static final LNCKEY_FOR_TLOG_LOGLEVEL:Ljava/lang/String; = "logLevel"

.field private static final LNCKEY_FOR_TOASTCLOUD_APPINFO:Ljava/lang/String; = "toastCloudAppInfo"

.field private static final LNCKEY_FOR_TOASTCLOUD_PUSH:Ljava/lang/String; = "Push"

.field private static final LNCKEY_FOR_TOASTCLOUD_PUSH_APPKEY:Ljava/lang/String; = "appKey"

.field private static final LNCKEY_FOR_USER_SELF_AUTH_INFO:Ljava/lang/String; = "userAuthentication"

.field private static final TAG:Ljava/lang/String; = "LncInfoManager"

.field private static final TRUE:Ljava/lang/String; = "Y"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrandType()Ljava/lang/String;
    .locals 1

    const-string v0, "brandType"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCGPInfoMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cgp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getCacheTTLTime()I
    .locals 2

    const-string v0, "cacheTTLSec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCheckAuthUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getUserSelfAuthInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "checkAuthUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getClientInfo()Ljava/util/Map;
    .locals 1

    const-string v0, "clientAttributes"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "clientAttributes"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentTime()J
    .locals 2

    const-string v0, "currentTime"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCustomerCenterUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "csUrl"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDownloadUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_DOWNLOAD_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getWebUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameIndicatorBipServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_GAME_INDICATOR_BIP:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGamePlusUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "GAME_PLUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGameRedirectionUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_GAME_REDIRECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getWebUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGreeOAuthProvider()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfoMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "gree"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "gree-sb"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gree"

    goto :goto_0
.end method

.method public static getHeartBeatInterval()I
    .locals 1

    const-string v0, "heartBeatInterval"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdpClientId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kakao"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "line"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gree"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameKR()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hangame"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "91"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "91"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "360"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "360"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "360"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameKR_PR()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "poketroket"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "gsquare"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "toast"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "hangame"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "hangame"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "hangamejp"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "LncInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "band"

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "band"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "neid"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getIdpClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfoMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "gree"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getGreeOAuthProvider()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->createIntance(Ljava/util/Map;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIdpInfoMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "idpInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getImageResizeServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_IMAGE_RESIZE:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_IMAGE:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIndicatorLogServerAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "indicatorLogServer"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServiceInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LncInfoManager"

    const-string v1, "launchingInfoMap is empty"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLanchingInfoInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getLanchingInfoInt(Ljava/lang/String;I)I
    .locals 4

    invoke-static {p0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    return p1

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LncInfoManager"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getLanchingInfoLong(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LncInfoManager"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "LncInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    goto :goto_0
.end method

.method private static getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLaunchingInfoMap()Ljava/util/Map;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "LncInfoManager"

    const-string v2, "LaunchingInfoMap is null"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getLightHouseUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LIGHTHOUSE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLineConfigKey()Ljava/lang/String;
    .locals 1

    const-string v0, "LGCConfigKey"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineGameUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "LGCGameUrl"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineGcmProjectNum()Ljava/lang/String;
    .locals 1

    const-string v0, "LGCGcmProjectNum"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLncNotices()Ljava/lang/Object;
    .locals 1

    const-string v0, "lncNotices"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLncRequestUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->getLncRequestUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogType()Ljava/lang/String;
    .locals 4

    const-string v1, "nelo"

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getClientInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "logtype"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "selected"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogType() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLoginServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_LOGIN:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginUrlMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "loginUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getMFSServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_MFS:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaintenanceInfoUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->HSP_WEBNAME_MAINTENANCE_INFO_URL:Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getWebUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxRankingSize()I
    .locals 1

    const-string v0, "maxRankingSize"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNeloInfo()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getClientInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "nelo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNeloLogLevel()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getNeloInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "logLevel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNeloServerUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "NELO2"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNomadServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_NOMAD:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoticeServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_NOTICE:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPaymentInfoMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "payment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getPersonalInfoCollectionUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "personalInfoCollectionUrl"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_PHOTO:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPunishReasonUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "punishReasonUrl"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReAuthUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getUserSelfAuthInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reAuthUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getRtaBipServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_RTA_BIP:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerInfoMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "serverInfos"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method private static getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/HSPServiceProperties;->getServerAddress(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "serviceDomain"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServiceInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LncInfoManager"

    const-string v1, "serviceInfoMap is empty"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceInfoMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "serviceInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getSilosServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_SILOS:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsConsumerKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "facebook4Feed"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnsConsumerKey :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "consumerKey"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "consumerKey"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSnsConsumerSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "facebook4Feed"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnsConsumerSecret :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "consumerSecret"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "consumerSecret"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSnsMap()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "sns"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getSnsRedirectionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "facebook"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "facebook4Feed"

    invoke-static {v1}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getReserved()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getReserved()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "redirectionUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "LncInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSnsConsumerSecret :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "redirectionUrl"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "redirectionUrl"

    invoke-static {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStabilityBipServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->HSP_SERVERNAME_STABILITY_BIP:Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getState()I
    .locals 1

    const-string v0, "state"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStateMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "stateMessage"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTLogAppkey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTLogHspLog()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "stabilityStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTLogInfo()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getClientInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "logncrash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTLogLevel()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "logLevel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTersmsUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "termsUrl"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToastCloudInfo()Ljava/util/Map;
    .locals 1

    const-string v0, "toastCloudAppInfo"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "toastCloudAppInfo"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getToastCloudPushAppKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getToastCloudPushInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getToastCloudPushInfo()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getToastCloudInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Push"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserSelfAuthInfo()Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "userAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method private static getWebUrl(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/HSPServiceProperties;->getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnforcedIdpLogin()Z
    .locals 2

    const-string v0, "ENFORCED_IDP_LOGIN"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExistLaunchingInfo()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHangameBrand()Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getBrandType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "HANGAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoldIdpLogin()Z
    .locals 2

    const-string v0, "HOLD_IDP_LOGIN"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLoginable()Z
    .locals 2

    const-string v0, "loginable"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeloHspLogUse()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getNeloInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Y"

    const-string v2, "stabilityStatus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isPlayable()Z
    .locals 2

    const-string v0, "playable"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLanchingInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isToastGame()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getBrandType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "TOAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TOASTGAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isToastUsBrand()Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getBrandType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TOAST_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseFacebookGameApp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "facebook4Feed"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
