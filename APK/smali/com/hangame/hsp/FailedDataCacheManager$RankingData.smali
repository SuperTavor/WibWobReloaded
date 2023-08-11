.class Lcom/hangame/hsp/FailedDataCacheManager$RankingData;
.super Ljava/lang/Object;


# static fields
.field private static final EXTRA_DATA_KEY:Ljava/lang/String; = "extraData"

.field private static final FACTOR_KEY:Ljava/lang/String; = "factor"

.field private static final SCORE_KEY:Ljava/lang/String; = "score"


# instance fields
.field private final mExtraData:Ljava/lang/String;

.field private final mFactor:I

.field private final mScore:D


# direct methods
.method private constructor <init>(DILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mScore:D

    iput p3, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mFactor:I

    iput-object p4, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(DILjava/lang/String;Lcom/hangame/hsp/FailedDataCacheManager$1;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;-><init>(DILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mFactor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)D
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mScore:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)Lcom/hangame/hsp/FailedDataCacheManager$RankingData;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->parseJsonString(Ljava/lang/String;)Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    move-result-object v0

    return-object v0
.end method

.method private static parseJsonString(Ljava/lang/String;)Lcom/hangame/hsp/FailedDataCacheManager$RankingData;
    .locals 6

    invoke-static {p0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    const-string v1, "score"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v1, "factor"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v3, "extraData"

    invoke-virtual {v0, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v4, v5, v1, v0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;-><init>(DILjava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FailedDataCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse ranking json string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toJSONString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "score"

    iget-wide v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mScore:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "factor"

    iget v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mFactor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extraData"

    iget-object v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    iget-wide v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mScore:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mScore:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mFactor:I

    iget v3, p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mFactor:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    iget-object v3, p1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->mExtraData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
