.class public Lcom/toast/android/analytics/promotion/model/CampaignInfo;
.super Ljava/lang/Object;


# instance fields
.field missionKey:Ljava/lang/String;

.field missionVal:J

.field promoDateBegin:Ljava/util/Date;

.field promoDateEnd:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/promotion/model/Promotion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromotionDateBegin()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateBegin:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromotionDateEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateEnd:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCustomValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionVal:J

    return-void
.end method


# virtual methods
.method public getMissionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMissionVal()J
    .locals 2

    iget-wide v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionVal:J

    return-wide v0
.end method

.method public getPromoDateBegin()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateBegin:Ljava/util/Date;

    return-object v0
.end method

.method public getPromoDateEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateEnd:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"missionKey\":\"%s\","

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionKey:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"missionVal\":%d,"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->missionVal:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"promotionDateBegin\":\"%s\","

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateBegin:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"promotionDateEnd\":\"%s\""

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/toast/android/analytics/promotion/model/CampaignInfo;->promoDateEnd:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
