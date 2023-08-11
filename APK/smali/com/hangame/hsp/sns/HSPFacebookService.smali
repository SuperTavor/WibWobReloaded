.class final Lcom/hangame/hsp/sns/HSPFacebookService;
.super Ljava/lang/Object;


# static fields
.field private static final FACEBOOK_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://graph.facebook.com/oauth/access_token"

.field private static final FACEBOOK_APPREQUEST_URL:Ljava/lang/String; = "https://www.facebook.com/dialog/apprequests"

.field private static final FACEBOOK_AUTHORIZE_URL:Ljava/lang/String; = "https://www.facebook.com/dialog/oauth"

.field private static final FACEBOOK_DEFAULT_GRAPH_URL:Ljava/lang/String; = "https://graph.facebook.com/"

.field private static final FACEBOOK_GET_VERIFY_URL:Ljava/lang/String; = "https://graph.facebook.com/me"

.field private static final FACEBOOK_PARAM_ACESSTOKEN:Ljava/lang/String; = "access_token"

.field private static final FACEBOOK_PARAM_LOCALE:Ljava/lang/String; = "locale"

.field private static final FACEBOOK_PARAM_SOURCE:Ljava/lang/String; = "source"

.field private static final FACEBOOK_POST_FEED_URL:Ljava/lang/String; = "https://graph.facebook.com/me/feed"

.field private static final FACEBOOK_POST_IMAGE_URL:Ljava/lang/String; = "https://graph.facebook.com/me/photos"

.field private static final FACEBOOK_SCOPE:Ljava/lang/String; = "email,user_birthday,publish_stream"

.field private static final FACEBOOK_TEMP_FILENAME:Ljava/lang/String; = "feedImage.jpg"

.field private static final FB_REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final PERMISSIONS:Ljava/util/List;

.field private static final TAG:Ljava/lang/String; = "HSPFacebookService"

.field private static final sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstanceLock:Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-direct {v0}, Lcom/hangame/hsp/sns/HSPFacebookService;-><init>()V

    sput-object v0, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_actions"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/sns/HSPFacebookService;->PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/HSPFacebookService$1;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterLogoutListener(Lcom/hangame/hsp/HSPCore$HSPAfterLogoutListener;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/HSPFacebookService$2;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterResetAccountListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestOAuth20(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->sendAppRequestFn(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V

    return-void
.end method

.method static synthetic access$400(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestUploadImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hangame/hsp/sns/HSPFacebookService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestFeedByUI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V

    return-void
.end method

.method static synthetic access$600(Lcom/hangame/hsp/sns/HSPFacebookService;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestUploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestFeedInFriend(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    return-void
.end method

.method static getInstance()Lcom/hangame/hsp/sns/HSPFacebookService;
    .locals 11

    sget-object v9, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FACEBOOK:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    sget-object v10, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "https://www.facebook.com/dialog/oauth"

    const-string v5, "https://graph.facebook.com/oauth/access_token"

    const/4 v6, 0x0

    const-string v7, "email,user_birthday,publish_stream"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, v10, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/sns/HSPFacebookService;->PERMISSIONS:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/hangame/hsp/sns/HSPFacebookService;->isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/sns/HSPFacebookService;->PERMISSIONS:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    :cond_0
    sget-object v1, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, v1, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->setAccessToken(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    monitor-exit v9

    return-object v0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    const-string v6, "fbconnect://success"

    const/4 v8, 0x0

    sget-object v10, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "https://www.facebook.com/dialog/oauth"

    const-string v5, "https://graph.facebook.com/oauth/access_token"

    const-string v7, "email,user_birthday,publish_stream"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, v10, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {v8}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsConsumerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsConsumerSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsRedirectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    sget-object v10, Lcom/hangame/hsp/sns/HSPFacebookService;->sInstance:Lcom/hangame/hsp/sns/HSPFacebookService;

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "https://www.facebook.com/dialog/oauth"

    const-string v5, "https://graph.facebook.com/oauth/access_token"

    const-string v7, "email,user_birthday,publish_stream"

    invoke-static {v8}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isUseFacebookGameApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, v10, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    goto :goto_0

    :cond_4
    const-string v0, "HSPFacebookService"

    const-string v1, "consumerkey, consumerSecret, redirectionUrl!!!!!!!!!!!!!!! info null "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static isSubsetOf(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 5

    const-string v0, "HSPFacebookService"

    const-string v1, "requestFeed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p7, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "https://graph.facebook.com/me/feed"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "access_token"

    iget-object v4, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v4}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "message"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "picture"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "link"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "caption"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v2, v3, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$18;

    invoke-direct {v1, p0, p7}, Lcom/hangame/hsp/sns/HSPFacebookService$18;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v2, v0, v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HSPFacebookService"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "SNS"

    const v1, 0xf000

    const-string v2, "Twitter exception occurred in feed()"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p7, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0
.end method

.method private requestFeedByUI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p8, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sns.feed"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idpCode"

    const-string v3, "facebook"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doAuthentication"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "picture"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "link"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "caption"

    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "description"

    invoke-interface {v1, v2, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/util/Map;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$19;

    invoke-direct {v1, p0, v0, p8}, Lcom/hangame/hsp/sns/HSPFacebookService$19;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    goto :goto_0
.end method

.method private requestFeedInFriend(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 2

    const-string v0, "HSPFacebookService"

    const-string v1, "requestFeedInFriend"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$25;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$25;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->sendAppRequestView(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method private requestOAuth20(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V
    .locals 2

    const-string v0, "HSPFacebookService"

    const-string v1, "requestOAuth20 login webview"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$17;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$17;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->auth(Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method private requestUploadImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 6

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://graph.facebook.com/me/photos"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    const-string v3, "source"

    new-instance v4, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v5, "feedImage.jpg"

    invoke-direct {v4, v0, v5}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    :try_start_0
    const-string v0, "message"

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$20;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$20;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v2, v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HSPFacebookService"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "SNS"

    const v1, 0xf000

    const-string v2, "Facebook exception occurred in Upload Image()"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method private requestUploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sns.feed"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idpCode"

    const-string v3, "facebook"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doAuthentication"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/util/Map;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$21;

    invoke-direct {v1, p0, v0, p4}, Lcom/hangame/hsp/sns/HSPFacebookService$21;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    goto :goto_0
.end method

.method private sendAppRequestFn(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V
    .locals 2

    const-string v0, "HSPFacebookService"

    const-string v1, "requestFeedInFriend"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$11;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$11;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->sendAppRequestView(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized feed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v1, "HSPFacebookService"

    const-string v2, "HSPFacebook feed"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v1, :cond_0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$7;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/hangame/hsp/sns/HSPFacebookService$7;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;Z)V

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized feedByUI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v1, "HSPFacebookService"

    const-string v2, "HSPFacebook feedByUIDialog"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v1, :cond_0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "picture"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$14;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/hangame/hsp/sns/HSPFacebookService$14;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedByUICB;Z)V

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth20;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    return-object v0
.end method

.method public declared-synchronized login(ZLcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook Login"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/hangame/hsp/sns/HSPFacebookService;->requestOAuth20(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$3;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/sns/HSPFacebookService$3;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized logout(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLogoutCB;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLogoutCB;->onLogout(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$4;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$4;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLogoutCB;)V

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v4}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/hangame/hsp/HSPSns;->reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook getMyFriendList"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/sns/HSPFacebookService$22;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook getMyFriendList"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/sns/HSPFacebookService$8;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestGetMyFriendMnoList(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "requestGetMyFriendList"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$23;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;Ljava/util/List;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const-string v2, "facebook"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->idpCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->idpIdList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const-string v2, "facebook"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->idpCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->idpIdList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized requestQueryHSPMemberNosList(Ljava/util/List;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "requestGetMyFriendList"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$9;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;Ljava/util/List;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const-string v2, "facebook"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->idpCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByGameIdpIdList;->idpIdList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const-string v2, "facebook"

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->idpCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByIdpIdList;->idpIdList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "getScreenName"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;->onUserNameReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$16;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/sns/HSPFacebookService$16;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookRequestUserNameCB;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://graph.facebook.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook inviteApp"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$24;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookFeedCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAppRequest(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook inviteApp"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;->onAppRequestSend(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$10;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookSendAppRequestCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAppRequestView(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "fbWebView"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/hangame/hsp/sns/HSPFacebookService$12;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadImage(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook uploadImageToAlbum"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "picture"

    invoke-static {v0, p3}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$13;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/sns/HSPFacebookService$13;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;Z)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadImageByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook uploadImageToAlbum"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "picture"

    invoke-static {v0, p3}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$15;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/sns/HSPFacebookService$15;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageByUICB;Z)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyAuthentication(Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPFacebookService"

    const-string v1, "HSPFacebook verifyAuthentication"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$5;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$5;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "access_token"

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v3}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v2, "https://graph.facebook.com/me"

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/hangame/hsp/sns/HSPFacebookService$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/hangame/hsp/sns/HSPFacebookService$6;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/core/HSPHttpResHandler;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService;->mHspOAuth20:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/HSPSns;->loadIdpAuthTicket(Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
