.class final Lcom/hangame/hsp/HSPRanking$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)I
    .locals 2

    invoke-static {p1}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$100(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)I

    move-result v0

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$100(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    check-cast p2, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-virtual {p0, p1, p2}, Lcom/hangame/hsp/HSPRanking$11;->compare(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)I

    move-result v0

    return v0
.end method
