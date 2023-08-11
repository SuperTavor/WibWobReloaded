.class public Lcom/hangame/hsp/HSPRanking$HSPRankingKey;
.super Ljava/lang/Object;


# instance fields
.field private mFactor:I

.field private mPeriod:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRankingKey(ILcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)Lcom/hangame/hsp/HSPRanking$HSPRankingKey;
    .locals 1

    new-instance v0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;-><init>()V

    iput p0, v0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->mFactor:I

    iput-object p1, v0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->mPeriod:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    return-object v0
.end method


# virtual methods
.method public getFactor()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->mFactor:I

    return v0
.end method

.method public getPeriod()Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->mPeriod:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    return-object v0
.end method
