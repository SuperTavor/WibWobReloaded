.class public final Lcom/hangame/hsp/auth/login/HSPLoginService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPLoginService"

.field protected static mIsWelcomeLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/auth/login/HSPLoginService;->mIsWelcomeLogin:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cancelSuspend()V
    .locals 2

    const-class v0, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/SuspendManager;->cancelAllTimers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized changeGuestMemberNo(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeGuestMemberNo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$3;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deviceLogin(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 3

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    const-string v2, "deviceLogin"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$8;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$8;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized disableSuspend()V
    .locals 2

    const-class v0, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/SuspendManager;->disableSuspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enableSuspend()V
    .locals 2

    const-class v0, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/SuspendManager;->enableSuspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized exportByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportByOAuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$15;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultNickname()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getDefaultNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoginId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getLastLoginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemberAge()I
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberAge()I

    move-result v0

    return v0
.end method

.method public static getMemberIDPUserID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDPUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemberNickname()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemberNo()J
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthInfo()Lcom/hangame/hsp/auth/OAuthInfo;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getOAuthInfo()Lcom/hangame/hsp/auth/OAuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionAuthData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getSessionAuthData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized guestLogin(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 3

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    const-string v2, "guestLogin"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$9;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$9;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importByOAuth() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$14;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSuspended()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public static isWelcomeLogin()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/auth/login/HSPLoginService;->mIsWelcomeLogin:Z

    return v0
.end method

.method public static declared-synchronized login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/auth/login/LoginExecutor;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginExecutor;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized login(Landroid/app/Activity;ZLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/LoginExecutor;-><init>(Landroid/app/Activity;ZLcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loginByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginByOAuth() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$10;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized logout(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$5;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapByOAuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$12;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapByOAuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/auth/login/HSPLoginService$13;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mappingDeviceToIdp(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mappingDeviceToIdp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$11;-><init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mappingToAccount(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mappingToAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/auth/login/HSPLoginService$1;-><init>(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mappingToAccount(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mappingToAccount: type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/auth/login/HSPLoginService$2;-><init>(Lcom/hangame/hsp/HSPMappingType;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseDevice(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 3

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    const-string v2, "releaseDevice"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$16;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$16;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized requestSuspend(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/SuspendManager;->startTimer()V

    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetAccount(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$6;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$6;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setWelcomeLogin(Z)V
    .locals 3

    const-string v0, "HSPLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWelcomeLogin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/hangame/hsp/auth/login/HSPLoginService;->mIsWelcomeLogin:Z

    return-void
.end method

.method public static declared-synchronized suspend()V
    .locals 5

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, "HSPLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suspend() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$4;

    invoke-direct {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService$4;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized withdrawAccount(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/auth/login/HSPLoginService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "withdrawAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "LOGINSERVICE"

    const v2, 0xf002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPLoginService$7;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/login/HSPLoginService$7;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
