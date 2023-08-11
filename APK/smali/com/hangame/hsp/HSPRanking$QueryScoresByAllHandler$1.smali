.class Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

.field final synthetic val$myScore:Lcom/hangame/hsp/HSPScore;

.field final synthetic val$scoreArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;Lcom/hangame/hsp/HSPScore;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->val$myScore:Lcom/hangame/hsp/HSPScore;

    iput-object p3, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->val$scoreArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iget-object v0, v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->val$myScore:Lcom/hangame/hsp/HSPScore;

    iget-object v2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->val$scoreArray:Ljava/util/List;

    iget-object v3, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;->this$1:Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    iget-object v3, v3, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;->onScoresReceive(Lcom/hangame/hsp/HSPScore;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
