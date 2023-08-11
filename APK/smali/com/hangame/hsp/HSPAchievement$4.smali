.class final Lcom/hangame/hsp/HSPAchievement$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$achievementID:Ljava/lang/String;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    iput-object p2, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$achievementID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/16 v3, 0x1002

    const/16 v2, 0x1001

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPAchievedCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPAchievedCache;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$achievementID:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/HSPAchievedCache;->insert(Ljava/lang/String;IJZ)J

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isResendFailedData()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$achievementID:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager;->addAchievementID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    const-string v1, "MASHUP"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isResendFailedData()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    if-ne v0, v3, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$achievementID:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager;->addAchievementID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    const-string v1, "MASHUP"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$4;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;->onAchievementReport(Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0
.end method
