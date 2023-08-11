.class Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iget-object v0, v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iget-object v1, v1, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v2, v2, v1}, Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;->onScoresReceive(Lcom/hangame/hsp/HSPScore;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "LINEGAME_STABILITY_GET_RANK_FAILED"

    iget-object v2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iget-object v2, v2, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
