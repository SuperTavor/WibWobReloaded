.class public abstract Lcom/hangame/hspls/api/SilosConnectorApi;
.super Ljava/lang/Object;


# static fields
.field protected static final END_POINT:Ljava/lang/String; = "client"

.field public static final HANGAME_JP_GUEST_MAPPING_KEY:Ljava/lang/String; = "guestMapping"

.field public static final HANGAME_JP_LOGIN_ACCESS_SECRET:Ljava/lang/String; = "login.accesssecret"

.field public static final HANGAME_JP_LOGIN_ACCESS_TOKEN:Ljava/lang/String; = "login.accesstoken"

.field public static final HANGAME_JP_LOGIN_MAPPING_KEY:Ljava/lang/String; = "isMapping"

.field public static final HANGAME_JP_LOGIN_TYPE_KEY:Ljava/lang/String; = "logintype"

.field public static final HANGAME_JP_WIFI_UPPER_CASE:Ljava/lang/String; = "wifiUpperCase"

.field public static final HANGAME_NAVER_VIRTUAL_ID:Ljava/lang/String; = "hangame.naver.virtualid"

.field public static final LAST_LOGIN_OAUTH_PROVIDER:Ljava/lang/String; = "last.login.oauthprovider"

.field public static final LOGIN_360_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.360.accesstoken"

.field public static final LOGIN_37_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.37.accesstoken"

.field public static final LOGIN_ANZHI_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.anzhi.accesstoken"

.field public static final LOGIN_BAIDU_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.baidu.accesstoken"

.field public static final LOGIN_BILIBILI_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.bilibili.accesstoken"

.field public static final LOGIN_DANGLE_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.dangle.accesstoken"

.field public static final LOGIN_FACEBOOK_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.facebook.accesstoken"

.field public static final LOGIN_FLYME_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.flyme.accesstoken"

.field public static final LOGIN_FLYME_UID:Ljava/lang/String; = "silos.login.flyme.uid"

.field public static final LOGIN_GOOGLE_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.google.accesstoken"

.field public static final LOGIN_HANGAMEJP_EMAIL_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.hangamejp.email.accesstoken"

.field public static final LOGIN_HANGAMEJP_OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.hangamejp.oauth.accesstoken"

.field public static final LOGIN_HUAWEI_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.huawei.accesstoken"

.field public static final LOGIN_LENOVO_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.lenovo.accesstoken"

.field public static final LOGIN_LINE_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.line.accesstoken"

.field public static final LOGIN_MI_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.mi.accesstoken"

.field public static final LOGIN_MI_UID:Ljava/lang/String; = "silos.login.mi.uid"

.field public static final LOGIN_NAVER_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.naver.accesstoken"

.field public static final LOGIN_OAUTH_PROVIDER:Ljava/lang/String; = "login.oauthprovider"

.field public static final LOGIN_OPPO_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.oppo.accesstoken"

.field public static final LOGIN_QQ_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.qq.accesstoken"

.field public static final LOGIN_UC_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.uc.accesstoken"

.field public static final LOGIN_VIVO_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.vivo.accesstoken"

.field public static final LOGIN_WANDOU_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.wandou.accesstoken"

.field public static final LOGIN_WECHAT_ACCESS_TOKEN:Ljava/lang/String; = "silos.login.wechat.accesstoken"

.field public static final PREF_KEY:Ljava/lang/String; = "hsp.hangame.jp.pref"

.field protected static final TAG:Ljava/lang/String; = "SilosConnectorApi"


# instance fields
.field protected final loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

.field protected final mClientId:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceId:Ljava/lang/String;

.field protected final mGameNo:I

.field protected final mMacAddress:Ljava/lang/String;

.field protected final mMachineID:Ljava/lang/String;

.field protected final mServiceDomain:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mServiceDomain:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    iput v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mGameNo:I

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mMachineID:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mMacAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mDeviceId:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->mClientId:Ljava/lang/String;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    invoke-direct {v0}, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;-><init>()V

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    return-void
.end method


# virtual methods
.method public abstract checkLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract deleteGuestLoginAuthData()V
.end method

.method public abstract deviceLogin()Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract exportByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract getDefaultMemberResult(Z)Lcom/hangame/hsp/auth/login/DefaultMemberResult;
.end method

.method public getDefaultNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->defaultNickname:Ljava/lang/String;

    return-object v0
.end method

.method protected getErrorMessage(Ljava/lang/Exception;)Lcom/hangame/hspls/HandleResponse;
    .locals 3

    const/16 v2, 0x2707

    new-instance v0, Lcom/hangame/hspls/HandleResponse;

    invoke-direct {v0}, Lcom/hangame/hspls/HandleResponse;-><init>()V

    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    const v1, -0x7fff3fff

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultString(Ljava/lang/String;)V

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_2

    const/16 v1, 0x270e

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, LXDR/XDRException;

    if-eqz v1, :cond_3

    const/16 v1, 0x270d

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/hangame/hspls/HandleResponse;->setResultCode(I)V

    goto :goto_0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginMemberInfo()Lcom/hangame/hsp/auth/login/LoginMemberInfo;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    return-object v0
.end method

.method public getLoginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;
    .locals 2

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    if-eqz v0, :cond_3

    const-string v0, "gsquare"

    iget-object v1, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v1, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GSQAURE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "facebook"

    iget-object v1, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v1, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v1, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FACEBOOK:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->oAuthProvider:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GUEST:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRecommendLoginType()Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract getSessionAuthData()Ljava/lang/String;
.end method

.method public getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    .locals 0

    return-void
.end method

.method public abstract guestLogin()Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract hasGuestLoginAuthData()Z
.end method

.method public abstract hasLoginAuthData()Z
.end method

.method public idpAutoLogin(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public isLoggedIn()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v1}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotExistSession:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v1}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget v0, v0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_Reset:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v1}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract logout()Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;Lcom/hangame/hsp/auth/login/LoginService$IdpData;)Lcom/hangame/hspls/HandleResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract mappingDeviceToIdp(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract releaseDevice()Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract resetDevice()Lcom/hangame/hspls/HandleResponse;
.end method

.method public setAdIdToBiData(Ljava/util/HashMap;)V
    .locals 0

    return-void
.end method

.method public abstract setOnline()Lcom/hangame/hsp/HSPResult;
.end method

.method public transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract updateLoginStatus(Ljava/util/Map;)Lcom/hangame/hspls/HandleResponse;
.end method

.method public abstract withdrawAccount()Lcom/hangame/hspls/HandleResponse;
.end method
