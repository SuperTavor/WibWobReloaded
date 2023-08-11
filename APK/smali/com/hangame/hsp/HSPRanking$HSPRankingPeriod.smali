.class public final enum Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

.field public static final enum HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

.field public static final enum HSP_RANKINGPERIOD_MONTHLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

.field public static final enum HSP_RANKINGPERIOD_TOTAL:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

.field public static final enum HSP_RANKINGPERIOD_WEEKLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;


# instance fields
.field private final order:I

.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const-string v1, "HSP_RANKINGPERIOD_DAILY"

    const/16 v2, 0x44

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    new-instance v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const-string v1, "HSP_RANKINGPERIOD_WEEKLY"

    const/16 v2, 0x57

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_WEEKLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    new-instance v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const-string v1, "HSP_RANKINGPERIOD_MONTHLY"

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_MONTHLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    new-instance v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const-string v1, "HSP_RANKINGPERIOD_TOTAL"

    const/16 v2, 0x54

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;-><init>(Ljava/lang/String;IBI)V

    sput-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_TOTAL:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    sget-object v1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_WEEKLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_MONTHLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_TOTAL:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->$VALUES:[Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->value:B

    iput p4, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->order:I

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->getValue()B

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->order:I

    return v0
.end method

.method private getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->value:B

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->$VALUES:[Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    return-object v0
.end method
