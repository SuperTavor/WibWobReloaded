.class public Lcom/hangame/hsp/oauth/HSPOAuth20Service;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/oauth/HSPOAuth20;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPOAuth20"


# instance fields
.field private mAccessSecret:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenURL:Ljava/lang/String;

.field private mAuthorizeURL:Ljava/lang/String;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mIsUseFacebookGameApp:Ljava/lang/Boolean;

.field private mRedirectURL:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mServiceProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mServiceProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAuthorizeURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessTokenURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mRedirectURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mScope:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessSecret:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mIsUseFacebookGameApp:Ljava/lang/Boolean;

    const-string v0, "HSPOAuth20"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mServiceProvider:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAuthorizeURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessTokenURL:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mRedirectURL:Ljava/lang/String;

    iput-object p7, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mScope:Ljava/lang/String;

    iput-object p8, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mIsUseFacebookGameApp:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAuthorizeURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hangame/hsp/oauth/HSPOAuth20Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized auth(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPOAuth20"

    const-string v1, "auth"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth20Service;Lcom/hangame/hsp/core/HSPResHandler;)V

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
    .locals 2

    const-string v0, "HSPOAuth20"

    const-string v1, "getAccessToken"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mServiceProvider:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccessToken()Z
    .locals 2

    const-string v0, "HSPOAuth20"

    const-string v1, "hasAccessToken"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUseFacebookGameApp()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "HSPOAuth20"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useFacebookGameApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mIsUseFacebookGameApp:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mIsUseFacebookGameApp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAccessSecret(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HSPOAuth20"

    const-string v1, "setAccessSecret"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessSecret:Ljava/lang/String;

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "HSPOAuth20"

    const-string v1, "setAccessToken"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public unAuth()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HSPOAuth20"

    const-string v1, "HSPOAuth10A unAuth"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->mAccessSecret:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service$2;-><init>(Lcom/hangame/hsp/oauth/HSPOAuth20Service;Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
