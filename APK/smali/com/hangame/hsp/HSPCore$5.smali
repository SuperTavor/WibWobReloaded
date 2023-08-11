.class Lcom/hangame/hsp/HSPCore$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPCore;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

.field final synthetic val$manualLogin:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPLoginCB;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    iput-object p2, p0, Lcom/hangame/hsp/HSPCore$5;->val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

    iput-boolean p3, p0, Lcom/hangame/hsp/HSPCore$5;->val$manualLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login: isUsePush="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v2}, Lcom/hangame/hsp/HSPCore;->access$400(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->isUsePush()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCacheManager;->checkMemberNoCanged()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$400(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isUsePush()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/push/HSPPushManager;->getInstance()Lcom/hangame/hsp/push/HSPPushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v1}, Lcom/hangame/hsp/HSPCore;->access$500(Lcom/hangame/hsp/HSPCore;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v2}, Lcom/hangame/hsp/HSPCore;->access$500(Lcom/hangame/hsp/HSPCore;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/push/HSPPushManager;->requestSubscription(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isPlayable()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;Z)V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$600(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v2}, Lcom/hangame/hsp/HSPCore;->access$600(Lcom/hangame/hsp/HSPCore;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;->onAfterLogin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "HSPCore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->readContacts()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPCore$5$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPCore$5$1;-><init>(Lcom/hangame/hsp/HSPCore$5;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPMyProfile;->loadMyProfile(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->this$0:Lcom/hangame/hsp/HSPCore;

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$400(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isResendFailedData()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->reportCachedAchievementIDs()V

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->reportCachedRankingScores()V

    :cond_4
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPCore$5;->val$manualLogin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/InternalHSPUiUri;->isAuthView(Lcom/hangame/hsp/ui/HSPUiUri;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$5;->val$callback:Lcom/hangame/hsp/HSPCore$HSPLoginCB;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isPlayable()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginCB;->onLogin(Lcom/hangame/hsp/HSPResult;Z)V

    :cond_7
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_LOGIN_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
