.class final Lcom/hangame/hsp/HSPRanking$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

.field final synthetic val$gameNo:I

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;ZLcom/hangame/hsp/HSPRankingInfoCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$1;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPRanking$1;->val$useCache:Z

    iput-object p3, p0, Lcom/hangame/hsp/HSPRanking$1;->val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

    iput p4, p0, Lcom/hangame/hsp/HSPRanking$1;->val$gameNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$1;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->defaultRanking:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget-byte v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->defaultRanking:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->rankingInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    if-ne v4, v1, :cond_1

    iget-byte v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-boolean v6, p0, Lcom/hangame/hsp/HSPRanking$1;->val$useCache:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/hangame/hsp/HSPRanking$1;->val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

    iget v7, p0, Lcom/hangame/hsp/HSPRanking$1;->val$gameNo:I

    invoke-virtual {v6, v0, v7, v1}, Lcom/hangame/hsp/HSPRankingInfoCache;->insert(Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;IZ)J

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/hangame/hsp/HSPRanking$1;->val$gameNo:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPRanking;->convertRankingInfoList2HSPRankingList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$1;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    invoke-static {v3}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v2

    invoke-interface {v1, v0, v4, v2, p2}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;->onRankingsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$1;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    sget-object v2, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const-string v3, "MASHUP"

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {v1, v6, v5, v2, v3}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;->onRankingsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ERROR"

    const-string v2, "LINEGAME_STABILITY_GET_RANK_FAILED"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$1;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    sget-object v1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-interface {v0, v6, v5, v1, p2}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;->onRankingsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_GET_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
