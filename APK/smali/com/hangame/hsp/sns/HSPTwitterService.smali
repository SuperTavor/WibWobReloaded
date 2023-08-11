.class final Lcom/hangame/hsp/sns/HSPTwitterService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPTwitterService"

.field private static final TWITTER_DATA_FIELD_SEPARATOR:Ljava/lang/String; = ","

.field private static final TWITTER_DATA_IDS:Ljava/lang/String; = "ids"

.field private static final TWITTER_DATA_PROFILLE_IMAGE_URL:Ljava/lang/String; = "profile_image_url"

.field private static final TWITTER_PARAM_MEDIA:Ljava/lang/String; = "media[]"

.field private static final TWITTER_PARAM_STATUS:Ljava/lang/String; = "status"

.field private static final TWITTER_PARAM_USER_ID:Ljava/lang/String; = "user_id"

.field private static final TWITTER_TEMP_FILENAME:Ljava/lang/String; = "feedImage.jpg"

.field private static final sInstance:Lcom/hangame/hsp/sns/HSPTwitterService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstanceLock:Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService;

    invoke-direct {v0}, Lcom/hangame/hsp/sns/HSPTwitterService;-><init>()V

    sput-object v0, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstance:Lcom/hangame/hsp/sns/HSPTwitterService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/HSPTwitterService$1;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterLogoutListener(Lcom/hangame/hsp/HSPCore$HSPAfterLogoutListener;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/HSPTwitterService$2;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterResetAccountListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/sns/HSPTwitterService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/HSPOAuth10aService;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestOAuth10a(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestFeed(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hangame/hsp/sns/HSPTwitterService;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestFeedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    return-void
.end method

.method static getInstance()Lcom/hangame/hsp/sns/HSPTwitterService;
    .locals 10

    sget-object v8, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstance:Lcom/hangame/hsp/sns/HSPTwitterService;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsConsumerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsConsumerSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getSnsRedirectionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    sget-object v9, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstance:Lcom/hangame/hsp/sns/HSPTwitterService;

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "https://api.twitter.com/oauth/request_token"

    const-string v6, "https://api.twitter.com/oauth/authorize"

    const-string v7, "https://api.twitter.com/oauth/access_token"

    invoke-direct/range {v0 .. v7}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    :cond_0
    :goto_0
    sget-object v0, Lcom/hangame/hsp/sns/HSPTwitterService;->sInstance:Lcom/hangame/hsp/sns/HSPTwitterService;

    monitor-exit v8

    return-object v0

    :cond_1
    const-string v0, "HSPTwitterService"

    const-string v1, "consumerkey, consumerSecret !!!!!!!!!!!!!!! info null "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestFeed(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 7

    const-string v0, "HSPTwitterService"

    const-string v1, "requestFeed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$13;

    invoke-direct {v1, p0, p3}, Lcom/hangame/hsp/sns/HSPTwitterService$13;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    if-nez p2, :cond_1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "https://api.twitter.com/1.1/statuses/update.json"

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    const-string v3, "status"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.protocol.expect-continue"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HSPTwitterService"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "SNS"

    const v1, 0xf000

    const-string v2, "Twitter exception occurred in feed()"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "https://api.twitter.com/1.1/statuses/update_with_media.json"

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "media[]"

    new-instance v5, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v6, "feedImage.jpg"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1
.end method

.method private requestFeedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sns.feed"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idpCode"

    const-string v3, "twitter"

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

    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$14;

    invoke-direct {v1, p0, v0, p4}, Lcom/hangame/hsp/sns/HSPTwitterService$14;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    goto :goto_0
.end method

.method private requestOAuth10a(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 2

    const-string v0, "HSPTwitterService"

    const-string v1, "requestOAuth10a login webview"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$12;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService$12;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->auth(Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized feed(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "feed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/sns/HSPTwitterService$7;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;Z)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized feedByUI(ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "feedByUIDialog"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "picture"

    invoke-static {v0, p3}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/sns/HSPTwitterService$8;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;Z)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthInfo()Lcom/hangame/hsp/oauth/HSPOAuth10a;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    return-object v0
.end method

.method public declared-synchronized login(ZLcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "Login"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/hangame/hsp/sns/HSPTwitterService;->requestOAuth10a(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$3;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/sns/HSPTwitterService$3;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/sns/HSPTwitterService;->verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized logout(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "Logout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const-string v0, "SNS"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;->onLogout(Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$4;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService$4;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLogoutCB;)V

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/hangame/hsp/HSPSns;->reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestFriendInfos(Ljava/util/List;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param idsList ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SNS"

    const v4, 0xf006

    invoke-static {v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;->onFriendInfosReceive(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/sns/HSPTwitterService$10;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/util/List;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "include_entities"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user_id"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://api.twitter.com/1.1/users/lookup.json"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized requestUserName(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "getScreenName"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;->onUserNameReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$11;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/sns/HSPTwitterService$11;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "user_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://api.twitter.com/1.1/users/show.json?"

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requesttFriendsIds(Ljava/lang/String;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendListCB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/sns/HSPTwitterService$9;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/sns/HSPTwitterService$9;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendListCB;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cursor"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://api.twitter.com/1.1/friends/ids.json"

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyAuthentication(Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPTwitterService"

    const-string v1, "verifyAuthentication"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SNS"

    const v2, 0xf006

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/hangame/hsp/sns/HSPTwitterService$5;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hsp/sns/HSPTwitterService$5;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService;->mHspOAuth10a:Lcom/hangame/hsp/oauth/HSPOAuth10aService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v2, Lcom/hangame/hsp/sns/HSPTwitterService$6;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/hangame/hsp/sns/HSPTwitterService$6;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lorg/apache/http/client/methods/HttpGet;Lcom/hangame/hsp/core/HSPHttpResHandler;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;)V

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPSns;->loadIdpAuthTicket(Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
