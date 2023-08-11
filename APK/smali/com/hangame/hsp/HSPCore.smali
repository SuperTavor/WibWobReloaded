.class public final Lcom/hangame/hsp/HSPCore;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPCore"

.field private static sInstance:Lcom/hangame/hsp/HSPCore;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mAfterLoginListenerSet:Ljava/util/Set;

.field private final mAfterLogoutListenerSet:Ljava/util/Set;

.field private final mAfterMappingToAccountListenerSet:Ljava/util/Set;

.field private final mAfterResetAccountListenerSet:Ljava/util/Set;

.field private final mAfterWithdrawAccountListenerSet:Ljava/util/Set;

.field private final mAppContext:Landroid/content/Context;

.field private final mBeforeLoginListenerSet:Ljava/util/Set;

.field private final mBeforeLogoutListenerSet:Ljava/util/Set;

.field private final mBeforeMappingToAccountListenerSet:Ljava/util/Set;

.field private final mBeforeResetAccountListenerSet:Ljava/util/Set;

.field private final mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

.field private final mConfiguration:Lcom/hangame/hsp/HSPConfiguration;

.field private final mGameActivity:Landroid/app/Activity;

.field private final mGameID:Ljava/lang/String;

.field private final mGameNo:I

.field private final mGameVersion:Ljava/lang/String;

.field private mLoginProfileCB:Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;

.field private final mServiceProperties:Lcom/hangame/hsp/HSPServiceProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/HSPCore;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPServiceProperties;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mServiceProperties:Lcom/hangame/hsp/HSPServiceProperties;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mLoginProfileCB:Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPCore() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAppContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore;->mGameActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/hangame/hsp/HSPCore;->mGameNo:I

    iput-object p3, p0, Lcom/hangame/hsp/HSPCore;->mGameID:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/HSPCore;->mGameVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/HSPCore;->mConfiguration:Lcom/hangame/hsp/HSPConfiguration;

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mConfiguration:Lcom/hangame/hsp/HSPConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Configuration is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/HSPCore$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/HSPCore;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/hangame/hsp/HSPCore;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPCore;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/HSPCore;->sendNotifySyncMemberInfo(Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hangame/hsp/HSPCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPCore;->initialize()V

    return-void
.end method

.method static synthetic access$400(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mConfiguration:Lcom/hangame/hsp/HSPConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/HSPCore;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method private beforeLogin()V
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->cancelSuspend()V

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeLoginListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeLoginListener;->onBeforeLogin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static createInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createInstance(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gameID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gameVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/hangame/hsp/HSPCore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "createInstance() gameID is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "HSPCore"

    const-string v1, "createInstance() gameVersion is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    move v0, v6

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstanceLock:Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/util/MutexLock;->createLock(Ljava/lang/Object;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v5

    new-instance v0, Lcom/hangame/hsp/HSPCore$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPCore$1;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/util/MutexLock;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish Initializing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    goto :goto_0
.end method

.method public static getInstance()Lcom/hangame/hsp/HSPCore;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/HSPCore;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLoginResHandler(ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)Lcom/hangame/hsp/core/HSPResHandler;
    .locals 1

    new-instance v0, Lcom/hangame/hsp/HSPCore$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/hangame/hsp/HSPCore$5;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPLoginCB;Z)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInitializer;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->registerMessageHandlers()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->registerGameMateHandlers()V

    return-void
.end method

.method static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPCore;->sInstance:Lcom/hangame/hsp/HSPCore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendNotifySyncMemberInfo(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-string v0, "HSPCore"

    const-string v1, "sendNotifySyncMemberInfo()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPCore$18;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$18;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/core/HSPResHandler;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqNotifySyncMemberInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqNotifySyncMemberInfo;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqNotifySyncMemberInfo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqNotifySyncMemberInfo;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public addAfterLoginListener(Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addAfterLoginListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAfterLogoutListener(Lcom/hangame/hsp/HSPCore$HSPAfterLogoutListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addAfterLogoutListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAfterMappingToAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterMappingToAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addAfterMappingToAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAfterResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterResetAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addAfterResetAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAfterWithdrawAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterWithdrawAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addAfterWithdrawAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBeforeLoginListener(Lcom/hangame/hsp/HSPCore$HSPBeforeLoginListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addBeforeLoginListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBeforeLogoutListener(Lcom/hangame/hsp/HSPCore$HSPBeforeLogoutListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addBeforeLogoutListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBeforeMappingToAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addBeforeMappingToAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBeforeResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeResetAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addBeforeResetAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addBeforeWithdrawAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeWithdrawAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "addBeforeWithdrawAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConfiguration()Lcom/hangame/hsp/HSPConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mConfiguration:Lcom/hangame/hsp/HSPConfiguration;

    return-object v0
.end method

.method public getGameActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mGameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mGameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPCore;->mGameNo:I

    return v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mGameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginProfileHandler()Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mLoginProfileCB:Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;

    return-object v0
.end method

.method public getMemberAge()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->getMemberAge()I

    move-result v0

    return v0
.end method

.method public getMemberID()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login.oauthprovider"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hangame/hsp/HSPOAuthProvider;->NAVER:Lcom/hangame/hsp/HSPOAuthProvider;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hangame.naver.virtualid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->getMemberIDPUserID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMemberNo()J
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->getMemberNo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mServiceProperties:Lcom/hangame/hsp/HSPServiceProperties;

    return-object v0
.end method

.method public getShortTermTicket(Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;)V
    .locals 4

    const-string v0, "HSPCore"

    const-string v1, "getShortTermTicket"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPCore$2;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$2;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetShortTermTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetShortTermTicket;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetShortTermTicket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetShortTermTicket;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetShortTermTicket;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public getState()Lcom/hangame/hsp/HSPState;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getHSPState()Lcom/hangame/hsp/HSPState;

    move-result-object v0

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->getSessionAuthData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$3;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$3;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTransferkey loginType()-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public login(Landroid/app/Activity;Lcom/hangame/hsp/HSPOAuthProvider;Lcom/hangame/hsp/HSPCore$HSPLoginCB;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hspOAuthProvider="

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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "login.oauthprovider"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->isWelcomeLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already Welcome Login... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isPlayable()Z

    move-result v1

    invoke-interface {p3, v0, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->clearProfileData()V

    const-string v0, "Complete"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hangame/hsp/HSPCore;->beforeLogin()V

    invoke-direct {p0, v3, p3}, Lcom/hangame/hsp/HSPCore;->getLoginResHandler(ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)Lcom/hangame/hsp/core/HSPResHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;Lcom/hangame/hsp/HSPOAuthProvider;Lcom/hangame/hsp/HSPOAuthData;Lcom/hangame/hsp/HSPCore$HSPLoginCB;)V
    .locals 3

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(oAuthProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oAuthData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Complete"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hangame/hsp/HSPCore;->beforeLogin()V

    invoke-static {p3}, Lcom/hangame/hsp/auth/OAuthData;->convertOAuthData(Lcom/hangame/hsp/HSPOAuthData;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p4}, Lcom/hangame/hsp/HSPCore;->getLoginResHandler(ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)Lcom/hangame/hsp/core/HSPResHandler;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public login(Landroid/app/Activity;ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)V
    .locals 3

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login(activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manualLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->isWelcomeLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already Welcome Login... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isPlayable()Z

    move-result v1

    invoke-interface {p3, v0, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->clearProfileData()V

    const-string v0, "Complete"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hangame/hsp/HSPCore;->beforeLogin()V

    invoke-direct {p0, p2, p3}, Lcom/hangame/hsp/HSPCore;->getLoginResHandler(ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)Lcom/hangame/hsp/core/HSPResHandler;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->login(Landroid/app/Activity;ZLcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "own"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GSQAURE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "facebook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FACEBOOK:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GUEST:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLoginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FACEBOOK:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_5
    const-string v1, "neid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_PAYCO:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_6
    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GOOGLE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_7
    const-string v1, "naver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_NAVER:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_8
    const-string v1, "linegame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_LINE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_9
    const-string v1, "hangame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_HANGAME:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto :goto_0

    :cond_a
    const-string v1, "360"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_360:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_b
    const-string v1, "baidu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_BAIDU:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_c
    const-string v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_XIAOMI:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_d
    const-string v1, "uc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UC:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_e
    const-string v1, "wan37"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_37:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_f
    const-string v1, "bilibili"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_BILIBILI:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_10
    const-string v1, "flyme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FLYME:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_11
    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_HUAWEI:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_12
    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_OPPO:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_13
    const-string v1, "lenovo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_LENOVO:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_14
    const-string v1, "anzhi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_ANZHI:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_15
    const-string v1, "wandou"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_WANDOUJIA:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_16
    const-string v1, "dangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_DANGLE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_17
    const-string v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_VIVO:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_18
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_19

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GUEST:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberOAuthProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kakao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_KAKAO:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_1b
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GUEST:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_1c
    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_UNKNOWN:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    goto/16 :goto_0
.end method

.method public logout(Lcom/hangame/hsp/HSPCore$HSPLogoutCB;)V
    .locals 6

    const-string v0, "HSPCore"

    const-string v1, "logout()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/HSPCore$7;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hsp/HSPCore$7;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPLogoutCB;)V

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->cancelSuspend()V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeLogoutListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeLogoutListener;->onBeforeLogout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->logout(Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public removeAfterLoginListener(Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeAfterLoginListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLoginListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAfterLogoutListener(Lcom/hangame/hsp/HSPCore$HSPAfterLogoutListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeAfterLogoutListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterLogoutListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAfterMappingToAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterMappingToAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeAfterMappingToAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAfterResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterResetAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeAfterResetAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterResetAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAfterWithdrawAccountListener(Lcom/hangame/hsp/HSPCore$HSPAfterWithdrawAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeAfterWithdrawAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mAfterWithdrawAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBeforeLoginListener(Lcom/hangame/hsp/HSPCore$HSPBeforeLoginListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeBeforeLoginListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLoginListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBeforeLogoutListener(Lcom/hangame/hsp/HSPCore$HSPBeforeLogoutListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeBeforeLogoutListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeLogoutListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBeforeMappingToAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeBeforeMappingToAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBeforeResetAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeResetAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeBeforeResetAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBeforeWithdrawAccountListener(Lcom/hangame/hsp/HSPCore$HSPBeforeWithdrawAccountListener;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "removeBeforeWithdrawAccountListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestChangeGuestMemberNo(Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    const-string v1, "requestChangeGuestMemberNo()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->supportChangeGuestMemberNo()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$15;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$15;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/HSPCore$16;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$16;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestChangeGuestMemberNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->changeGuestMemberNo(Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestMappingToAccount(Lcom/hangame/hsp/HSPCore$HSPRequestMappingToAccountCB;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    const-string v1, "requestMappingToAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPMappingType;->ID:Lcom/hangame/hsp/HSPMappingType;

    invoke-virtual {p0, v0, p1}, Lcom/hangame/hsp/HSPCore;->requestMappingToAccount(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/HSPCore$HSPRequestMappingToAccountCB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestMappingToAccount(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/HSPCore$HSPRequestMappingToAccountCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMappingToAccount() => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->supportMapping()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$11;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPCore$11;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestMappingToAccountCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/HSPCacheManager;->truncateAllTables()V

    new-instance v1, Lcom/hangame/hsp/HSPCore$12;

    invoke-direct {v1, p0, p2}, Lcom/hangame/hsp/HSPCore$12;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestMappingToAccountCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;->onBeforeMappingToAccount()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {p1, v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->mappingToAccount(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized requestMappingToAccount(Lcom/hangame/hsp/HSPMappingType;ZLcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMappingToAccount() => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->supportRemapping()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$13;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPCore$13;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/HSPCacheManager;->truncateAllTables()V

    new-instance v1, Lcom/hangame/hsp/HSPCore$14;

    invoke-direct {v1, p0, p3}, Lcom/hangame/hsp/HSPCore$14;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore;->mBeforeMappingToAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeMappingToAccountListener;->onBeforeMappingToAccount()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v0, "N"

    if-eqz p2, :cond_3

    const-string v0, "Y"

    :cond_3
    invoke-static {p1, v0, v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->mappingToAccount(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public requestServerUTC(Lcom/hangame/hsp/HSPCore$HSPRequestServerUTCCB;)V
    .locals 3

    const-string v0, "HSPCore"

    const-string v1, "requestServerUTC"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPCore$17;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$17;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPRequestServerUTCCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetServerGMTTime;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetServerGMTTime;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetServerGMTTime;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public declared-synchronized resetAccount(Lcom/hangame/hsp/HSPCore$HSPResetAccountCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    const-string v1, "resetAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->supportResetAccount()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$8;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$8;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPResetAccountCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/hangame/hsp/HSPCore$9;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hsp/HSPCore$9;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPResetAccountCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore;->mBeforeResetAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeResetAccountListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeResetAccountListener;->onBeforeResetAccount()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->resetAccount(Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setLoginProfileHandler(Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore;->mLoginProfileCB:Lcom/hangame/hsp/HSPCore$HSPSetLoginProfileCB;

    return-void
.end method

.method public suspend(Lcom/hangame/hsp/HSPCore$HSPSuspendCB;)V
    .locals 2

    const-string v0, "HSPCore"

    const-string v1, "suspend()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPCore$6;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$6;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPSuspendCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->requestSuspend(Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPCore [HSPVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getHSPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", GameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPCore;->mGameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GameID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mGameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GameVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore;->mGameVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$4;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPCore$4;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferAccount loginType()-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized withdrawAccount(Lcom/hangame/hsp/HSPCore$HSPWithdrawAccountCB;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "HSPCore"

    const-string v1, "WithdrawAccount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore$HSPLoginType;->getValue()B

    move-result v0

    sget-object v1, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_LINE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore$HSPLoginType;->getValue()B

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "HSPCore"

    const-string v1, "you can\'t use this api in line login of toastgame"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "LINE"

    const/16 v1, 0x100d

    const-string v2, "you can\'t use this api"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/HSPCore$HSPWithdrawAccountCB;->onAccountWithdraw(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    new-instance v1, Lcom/hangame/hsp/HSPCore$10;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hsp/HSPCore$10;-><init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPWithdrawAccountCB;)V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore;->mBeforeWithdrawAccountListenerSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPBeforeWithdrawAccountListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPBeforeWithdrawAccountListener;->onBeforeWithdrawAccount()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->withdrawAccount(Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void
.end method
