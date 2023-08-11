.class Lcom/hangame/hsp/HSPRanking$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPRanking;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$9;->this$0:Lcom/hangame/hsp/HSPRanking;

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$9;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$9;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v2, 0x7000b

    if-ne v1, v2, :cond_3

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->rankingList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;

    new-instance v1, Lcom/hangame/hsp/HSPScore;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingScore:D

    iget v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingGrade:I

    iget v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankChanged:I

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v6, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    iget-object v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingExtra:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPScore;-><init>(DIIJLjava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$9;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;

    invoke-interface {v0, v9, p2}, Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;->onScoresReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$9;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;

    const-string v2, "MASHUP"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;->onScoresReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ERROR"

    const-string v2, "LINEGAME_STABILITY_GET_RANK_FAILED"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$9;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;->onScoresReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_GET_RANK_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
