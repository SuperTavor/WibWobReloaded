.class Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/auth/login/LoginExecutor$Command;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/hangame/hsp/HSPResult;
    .locals 7

    const/4 v0, 0x0

    const/16 v5, 0x100e

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v1, "LoginExecutor"

    const-string v2, "GetLncInfoCommand"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LNC"

    invoke-static {v1}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->getLaunchingInfoMap(Z)Z

    move-result v1

    const-string v2, "LNC"

    invoke-static {v2}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "LoginExecutor"

    const-string v1, "Get Launching Server Info failed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$302(Lcom/hangame/hsp/auth/login/LoginExecutor;Z)Z

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INFO"

    const-string v1, "HSP_STAIND_LNC_FAILED"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Launching Server Info failed. lnc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPConfiguration;->getAddressLaunching()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "LOGINSERVICE"

    invoke-static {v0, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v1}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->showLaunchingNotice(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v1}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->checkLanuchingState(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LoginExecutor"

    const-string v2, "Launching Server is not Loginable"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;->this$0:Lcom/hangame/hsp/auth/login/LoginExecutor;

    invoke-static {v1, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor;->access$302(Lcom/hangame/hsp/auth/login/LoginExecutor;Z)Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties;->getLaunchingState()Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "INFO"

    const-string v3, "HSP_STAIND_LNC_FAILED"

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getResultCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Launching Server is not Loginable"

    invoke-static {v2, v3, v4, v5}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne v1, v2, :cond_7

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "inspection.pref"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "inspection.pref"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "inspection.pref"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "LOGINSERVICE"

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getResultCode()I

    move-result v1

    const/16 v2, 0x200d

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;II)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LOGINSERVICE"

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getResultCode()I

    move-result v1

    const/16 v2, 0x200e

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;II)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "LOGINSERVICE"

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getResultCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "LOGINSERVICE"

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getResultCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_0
.end method
