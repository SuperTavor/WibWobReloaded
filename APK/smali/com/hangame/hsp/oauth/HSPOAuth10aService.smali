.class public Lcom/hangame/hsp/oauth/HSPOAuth10aService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/oauth/HSPOAuth10a;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPOAuth10a"


# instance fields
.field private mAccessSecret:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mAccessURL:Ljava/lang/String;

.field private mAuthorizeURL:Ljava/lang/String;

.field private mCallbackURL:Ljava/lang/String;

.field private mConsumer:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mProvider:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;

.field private mRequestURL:Ljava/lang/String;

.field private mServiceProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hangame/hsp/oauth/HSPOAuth10aService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mServiceProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mCallbackURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mRequestURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAuthorizeURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumer:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mProvider:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;

    const-string v0, "HSPOAuth10a"

    const-string v1, "HSPOAuth10a Constructor"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mServiceProvider:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mCallbackURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mRequestURL:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAuthorizeURL:Ljava/lang/String;

    iput-object p7, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessURL:Ljava/lang/String;

    invoke-static {p4}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oob"

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mCallbackURL:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumer:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mRequestURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAuthorizeURL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mProvider:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mCallbackURL:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumer:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mCallbackURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mProvider:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/hangame/hsp/oauth/HSPOAuth10aService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/hangame/hsp/oauth/HSPOAuth10aService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hangame/hsp/oauth/HSPOAuth10aService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized auth(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPOAuth10a"

    const-string v1, "HSPOAuth10a auth"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/oauth/HSPOAuth10aService$1;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth10aService;Lcom/hangame/hsp/core/HSPResHandler;)V

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

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccessToken()Z
    .locals 2

    const-string v0, "HSPOAuth10a"

    const-string v1, "HSPOAuth10a hasAccessToken"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAccessSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public unAuth()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HSPOAuth10a"

    const-string v1, "HSPOAuth10a unAuth"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth10aService;->mAccessSecret:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public useProviderResources(ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth10aService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/oauth/HSPOAuth10aService$2;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth10aService;ZLorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
