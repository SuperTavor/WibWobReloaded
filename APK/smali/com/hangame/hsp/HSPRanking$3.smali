.class final Lcom/hangame/hsp/HSPRanking$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

.field final synthetic val$factor:I

.field final synthetic val$gameNo:I

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;IIZLcom/hangame/hsp/HSPRankingInfoCache;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$3;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    iput p2, p0, Lcom/hangame/hsp/HSPRanking$3;->val$factor:I

    iput p3, p0, Lcom/hangame/hsp/HSPRanking$3;->val$gameNo:I

    iput-boolean p4, p0, Lcom/hangame/hsp/HSPRanking$3;->val$useCache:Z

    iput-object p5, p0, Lcom/hangame/hsp/HSPRanking$3;->val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$3;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->defaultRanking:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->defaultRanking:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v4, v2, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->rankingInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iget v6, p0, Lcom/hangame/hsp/HSPRanking$3;->val$factor:I

    if-ne v2, v6, :cond_1

    if-eqz v1, :cond_2

    iget-byte v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    invoke-static {v2}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v2

    iget-object v6, v1, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->reserved:Ljava/lang/String;

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    iget v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    if-ne v4, v2, :cond_3

    iget-byte v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    if-ne v3, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    iget-boolean v6, p0, Lcom/hangame/hsp/HSPRanking$3;->val$useCache:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/hangame/hsp/HSPRanking$3;->val$cacheDb:Lcom/hangame/hsp/HSPRankingInfoCache;

    iget v7, p0, Lcom/hangame/hsp/HSPRanking$3;->val$gameNo:I

    invoke-virtual {v6, v0, v7, v2}, Lcom/hangame/hsp/HSPRankingInfoCache;->insert(Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;IZ)J

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/hangame/hsp/HSPRanking;

    invoke-direct {v1}, Lcom/hangame/hsp/HSPRanking;-><init>()V

    iget v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iput v2, v1, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingName:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/HSPRanking;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->unitTxt:Ljava/lang/String;

    iput-object v2, v1, Lcom/hangame/hsp/HSPRanking;->mUnit:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hsp/HSPRanking$3;->val$gameNo:I

    iput v2, v1, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iget-byte v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    invoke-static {v2}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v2

    iget-object v6, v1, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->reserved:Ljava/lang/String;

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$3;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;->onRankingLoad(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPResult;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v2, p0, Lcom/hangame/hsp/HSPRanking$3;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    const-string v3, "MASHUP"

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;->onRankingLoad(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ERROR"

    const-string v2, "LINEGAME_STABILITY_GET_RANK_FAILED"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$3;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;->onRankingLoad(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_GET_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
