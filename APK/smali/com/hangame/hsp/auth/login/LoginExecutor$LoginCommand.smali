.class Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/auth/login/LoginExecutor$Command;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/hangame/hsp/HSPResult;
    .locals 9

    const/4 v3, 0x0

    const/16 v7, 0x4001

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "LoginExecutor"

    const-string v4, "LoginCommand"

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INFO"

    const-string v4, "HSP_STAIND_LOGIN_START"

    const-string v5, "0"

    invoke-static {v2, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->initialize()V

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->initialize(Landroid/content/Context;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    const-string v4, "LoginExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mashup Init : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Complete"

    invoke-static {v4}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    const-string v0, "INFO"

    const-string v4, "HSP_STAIND_LOGIN_COMPLETE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v1, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LOGIN_PROFILING"

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_LOGIN_FAILED"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$500(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$600(Lcom/hangame/hsp/auth/login/LoginExecutor;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v4}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$500(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v5}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$600(Lcom/hangame/hsp/auth/login/LoginExecutor;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/hangame/hsp/auth/login/HSPSilosService;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v4}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->startHeartBeatTask()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPConfiguration;->isShowUiWelcomeMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v4}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/hangame/hsp/auth/login/BridgeToast;->showToast(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    const-string v4, "Complete"

    invoke-static {v4}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_9

    :goto_4
    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_a

    const-string v0, "INFO"

    const-string v4, "HSP_STAIND_LOGIN_COMPLETE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v1, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LOGIN_PROFILING"

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v3

    goto/16 :goto_2

    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$500(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$600(Lcom/hangame/hsp/auth/login/LoginExecutor;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v4}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$500(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/auth/login/HSPSilosService;->login(Landroid/app/Activity;Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v2}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v4}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$700(Lcom/hangame/hsp/auth/login/LoginExecutor;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/auth/login/HSPSilosService;->login(Landroid/app/Activity;Z)Lcom/hangame/hsp/HSPResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_LOGIN_FAILED"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :try_start_4
    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const v4, -0x7effff91

    if-eq v3, v4, :cond_c

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const v4, 0x14006f

    if-ne v3, v4, :cond_f

    :cond_c
    iget-object v3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v3}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showPunishAlert(Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_d
    :goto_6
    const-string v3, "Complete"

    invoke-static {v3}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v2, :cond_12

    :goto_7
    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    const-string v0, "INFO"

    const-string v3, "HSP_STAIND_LOGIN_COMPLETE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v1, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LOGIN_PROFILING"

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object v0, v2

    goto/16 :goto_2

    :cond_f
    :try_start_5
    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const v4, -0x7effff90

    if-eq v3, v4, :cond_10

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    const v4, 0x140070

    if-ne v3, v4, :cond_d

    :cond_10
    iget-object v3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v3}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->showLoginAlert(Landroid/app/Activity;Lcom/hangame/hsp/HSPResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_9
    :try_start_6
    const-string v4, "LoginExecutor"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "LOGINSERVICE"

    const v5, 0xf006

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    const-string v4, "Complete"

    invoke-static {v4}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v4

    if-nez v4, :cond_11

    if-eqz v3, :cond_14

    :goto_a
    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_15

    const-string v0, "INFO"

    const-string v4, "HSP_STAIND_LOGIN_COMPLETE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v1, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LOGIN_PROFILING"

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object v0, v2

    goto/16 :goto_2

    :cond_12
    move v0, v1

    goto/16 :goto_7

    :cond_13
    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_LOGIN_FAILED"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    move v0, v1

    goto :goto_a

    :cond_15
    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_LOGIN_FAILED"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catchall_0
    move-exception v2

    :goto_c
    const-string v4, "Complete"

    invoke-static {v4}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v4

    if-nez v4, :cond_16

    if-eqz v3, :cond_17

    :goto_d
    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_18

    const-string v0, "INFO"

    const-string v4, "HSP_STAIND_LOGIN_COMPLETE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v1, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LOGIN_PROFILING"

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/debug/ProfilingManager;->getProfileString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    throw v2

    :cond_17
    move v0, v1

    goto :goto_d

    :cond_18
    const-string v0, "ERROR"

    const-string v1, "HSP_STAIND_LOGIN_FAILED"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_c

    :catch_1
    move-exception v2

    goto/16 :goto_9
.end method
