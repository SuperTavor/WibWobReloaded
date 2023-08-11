.class final Lcom/hangame/hsp/HSPRanking$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

.field final synthetic val$rankingList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$4;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$4;->val$rankingList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$4;->val$callback:Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$4;->val$rankingList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPRanking;

    const-string v2, "HSPSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;->onRankingLoad(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
