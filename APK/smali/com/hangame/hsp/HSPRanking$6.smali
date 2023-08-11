.class final Lcom/hangame/hsp/HSPRanking$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$factor:I

.field final synthetic val$score:D


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;DILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    iput-wide p2, p0, Lcom/hangame/hsp/HSPRanking$6;->val$score:D

    iput p4, p0, Lcom/hangame/hsp/HSPRanking$6;->val$factor:I

    iput-object p5, p0, Lcom/hangame/hsp/HSPRanking$6;->val$extraData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    const/16 v3, 0x1002

    const/16 v2, 0x1001

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isResendFailedData()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-ne v1, v3, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$score:D

    iget v2, p0, Lcom/hangame/hsp/HSPRanking$6;->val$factor:I

    iget-object v3, p0, Lcom/hangame/hsp/HSPRanking$6;->val$extraData:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/FailedDataCacheManager;->addRankingScore(DILjava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    const-string v1, "MASHUP"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    const-string v2, "MASHUP"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ERROR"

    const-string v2, "LINEGAME_STABILITY_POST_RANK_FAILED"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_POST_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isResendFailedData()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    if-ne v0, v3, :cond_7

    :cond_6
    iget-wide v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$score:D

    iget v2, p0, Lcom/hangame/hsp/HSPRanking$6;->val$factor:I

    iget-object v3, p0, Lcom/hangame/hsp/HSPRanking$6;->val$extraData:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/FailedDataCacheManager;->addRankingScore(DILjava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    const-string v1, "MASHUP"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_POST_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$6;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;->onRankingReport(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_POST_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
