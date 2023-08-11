.class final Lcom/hangame/hsp/HSPRanking$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

.field final synthetic val$rankingList:Ljava/util/List;

.field final synthetic val$repRankingInfo:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$2;->val$repRankingInfo:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$2;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    iput-object p3, p0, Lcom/hangame/hsp/HSPRanking$2;->val$rankingList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$2;->val$repRankingInfo:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$2;->val$repRankingInfo:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$2;->val$repRankingInfo:Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget-byte v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/HSPRanking$2;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;

    iget-object v3, p0, Lcom/hangame/hsp/HSPRanking$2;->val$rankingList:Ljava/util/List;

    const-string v4, "HSPSERVICE"

    invoke-static {v4}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v4

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;->onRankingsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPResult;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    goto :goto_0
.end method
