.class public Lcom/hangame/hsp/cgp/processor/PromotionProcessor;
.super Ljava/lang/Object;


# static fields
.field private static final ENCRYPTION_SEED:Ljava/lang/String; = "hspclient1234"

.field private static final JPG:Ljava/lang/String; = "jpg"

.field private static final PNG:Ljava/lang/String; = "png"

.field private static final TAG:Ljava/lang/String; = "PromotionProcessor"

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static checkReportImpression(Landroid/content/Context;Lcom/hangame/hsp/cgp/response/CGPResponse;Ljava/util/HashMap;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "PromotionProcessor"

    const-string v1, "** Report Promotion Impression and Process RequestSingleGameRewardCompleted**"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/hangame/hsp/cgp/model/PromotionInfo;

    invoke-direct {v6}, Lcom/hangame/hsp/cgp/model/PromotionInfo;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->values()[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    move-result-object v7

    move v5, v3

    :goto_0
    array-length v0, v7

    if-ge v5, v0, :cond_b

    aget-object v0, v7, v5

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/model/PromotionItem;

    aget-object v9, v7, v5

    invoke-virtual {p1, v9}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCurPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionState;

    move-result-object v9

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v10

    sget-object v11, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v11}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_4

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v10

    sget-object v11, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v11}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_3

    aget-object v9, v7, v5

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {p1, v9, v10}, Lcom/hangame/hsp/cgp/response/CGPResponse;->setPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :cond_0
    :goto_2
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v10

    if-eq v9, v10, :cond_1

    aget-object v9, v7, v5

    invoke-virtual {p1, v1, v9}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCGPDataFromIdAndShape(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/response/CGPData;

    move-result-object v9

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v9}, Lcom/hangame/hsp/cgp/core/CGPService;->reportBI(ILcom/hangame/hsp/cgp/response/CGPData;)Z

    :cond_1
    aget-object v9, v7, v5

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_2

    invoke-static {v1, v6}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->fillRewardOrPromoInfo(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/model/PromotionInfo;)V

    :cond_2
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_REWARD_REQUIRED:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_0

    aget-object v9, v7, v5

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_REWARD_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {p1, v9, v10}, Lcom/hangame/hsp/cgp/response/CGPResponse;->setPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;Lcom/hangame/hsp/cgp/model/PromotionState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "PromotionProcessor"

    const-string v2, "responseSuccess exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_4
    return v0

    :cond_4
    :try_start_1
    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v10

    sget-object v11, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v11}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_7

    aget-object v9, v7, v5

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_REWARD_REQUIRED:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {p1, v9, v10}, Lcom/hangame/hsp/cgp/response/CGPResponse;->setPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :cond_5
    :goto_5
    aget-object v9, v7, v5

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_6

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_8

    invoke-static {v1, v6}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->fillRewardInstallInfo(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/model/PromotionInfo;)V

    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardValue()I

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "PromotionProcessor"

    const-string v10, "********  check promotion step 10 : Process RequestSingleGameRewardCompleted when RewardValue is none ********"

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_9

    const-string v9, "PromotionProcessor"

    const-string v10, "single reward complete"

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PromotionProcessor"

    const-string v10, "Reward exists but the reward value is zero."

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v9

    invoke-virtual {v9, p0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/model/PromotionState;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_5

    aget-object v9, v7, v5

    sget-object v10, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_REWARD_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {p1, v9, v10}, Lcom/hangame/hsp/cgp/response/CGPResponse;->setPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    goto :goto_5

    :cond_8
    invoke-static {v1, v6}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->fillRewardOrPromoInfo(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/model/PromotionInfo;)V

    goto :goto_6

    :cond_9
    const-string v9, "PromotionProcessor"

    const-string v10, "single install reward complete"

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PromotionProcessor"

    const-string v10, "Reward exists but the reward value is zero."

    invoke-static {v9, v10}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v9

    invoke-virtual {v9, p0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    goto/16 :goto_3

    :cond_a
    aget-object v0, v7, v5

    invoke-virtual {p2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/hangame/hsp/cgp/core/CGPService;->setPromotionInfo(Lcom/hangame/hsp/cgp/model/PromotionInfo;)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hangame/hsp/cgp/core/CGPService;->setPromotionMap(Ljava/util/HashMap;)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->setCgpResponse(Lcom/hangame/hsp/cgp/response/CGPResponse;)V

    const-string v0, "PromotionProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CGP Data : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PromotionProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "promotionInfo : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto/16 :goto_4
.end method

.method public static checkRewardDB(Ljava/lang/Object;Ljava/util/HashMap;)Z
    .locals 14

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "PromotionProcessor"

    const-string v3, "responseCheck , promotionInfo is null"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->values()[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    move-result-object v8

    const/4 v2, 0x0

    move v6, v2

    move v7, v3

    :goto_1
    array-length v2, v8

    if-ge v6, v2, :cond_5

    aget-object v2, v8, v6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v5, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v4

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v10

    if-eq v4, v10, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v10

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->selectData(Landroid/content/Context;[Ljava/lang/String;)Lcom/hangame/hsp/cgp/db/CGPDBObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const-string v4, "PromotionProcessor"

    const-string v10, "Already got the reward."

    invoke-static {v4, v10}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v10

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v10, v4, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    const-string v4, "PromotionProcessor"

    const-string v10, "Already got the reward."

    invoke-static {v4, v10}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v10

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v10, v4, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "PromotionProcessor"

    const-string v4, "checkRewardDB exception : "

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v4

    const/4 v10, 0x3

    if-ne v4, v10, :cond_3

    const-string v4, "PromotionProcessor"

    const-string v10, "Already got the reward."

    invoke-static {v4, v10}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v10

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v10, v4, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v10

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v10, v4, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, v7, v2

    aget-object v2, v8, v6

    invoke-virtual {p1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto/16 :goto_1

    :cond_5
    if-nez v7, :cond_6

    new-instance v2, Lcom/hangame/hsp/cgp/response/CGPResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/hangame/hsp/cgp/response/CGPResponse;-><init>(I)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->setCgpResponse(Lcom/hangame/hsp/cgp/response/CGPResponse;)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->setPromotionMap(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private static fillRewardInstallInfo(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/model/PromotionInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getBubbleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setBubbleText_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setButtonImg_install(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setButtonUrl_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getEventUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setEventUrl_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerLandImg_install(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerLandUrl_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerPortImg_install(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerPortUrl_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionId(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setRewardCode_install(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setRewardValue_install(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setTypeCode(I)V

    return-void
.end method

.method private static fillRewardOrPromoInfo(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/model/PromotionInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getBubbleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setBubbleText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setButtonImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setButtonUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getEventUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setEventUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerLandImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerLandUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerPortImg(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionBannerPortUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setPromotionId(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setRewardCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setRewardValue(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/cgp/model/PromotionInfo;->setTypeCode(I)V

    return-void
.end method

.method public static getCGPData(Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;)Lcom/hangame/hsp/cgp/response/CGPData;
    .locals 3

    new-instance v0, Lcom/hangame/hsp/cgp/response/CGPData;

    invoke-direct {v0}, Lcom/hangame/hsp/cgp/response/CGPData;-><init>()V

    if-eqz p0, :cond_1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->promotionNo:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setId(I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->promotionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->serviceType:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setServiceType(I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->adhostGamePlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setAdhostGamePlatform(Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->adhostGameNo:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setAdhostGameNo(I)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->rewardGameNo:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setRewardGameNo(I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->rewardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setRewardType(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->imagePageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setPromotionUrl(Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->targetGameNo:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setPromotionGameNo(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->buttonUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setButtonUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->imageLandUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setBannerLandUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->imagePortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setBannerPortUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->storeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setAndroidStoreUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->impressionType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setTypeCode(I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->bubbleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setBubbleText(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->allowAlreadyInstalledUser:Z

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setRewardBeforePromotion(Z)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->promotionType:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setPromotionType(I)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->promotionType:I

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->promotionType:I

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->rewardCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setRewardCode(Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->rewardValue:I

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPData;->setRewardValue(I)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "PromotionProcessor"

    const-string v2, "Not exist promotion url."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCGPResponse(Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;)Lcom/hangame/hsp/cgp/response/CGPResponse;
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/hangame/hsp/cgp/response/CGPResponse;

    invoke-direct {v3}, Lcom/hangame/hsp/cgp/response/CGPResponse;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->getResult()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "PromotionProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Response Fail [status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->getPromoInfoList()Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;

    const-string v1, "1"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->impressionType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->impressionType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->impressionType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_2
    invoke-static {v0}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->getCGPData(Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;)Lcom/hangame/hsp/cgp/response/CGPData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    const-string v1, "4"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/PromotionEx;->impressionType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v5}, Lcom/hangame/hsp/cgp/response/CGPResponse;->setPromotionMap(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PromotionProcessor"

    const-string v3, "getCGPResponse exception : "

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static getPromotionData(Lcom/hangame/hsp/cgp/response/CGPData;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionItem;
    .locals 14

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v2

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v4

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getButtonUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getBannerPortUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getBannerLandUrl()Ljava/lang/String;

    move-result-object v6

    const-string v0, "PromotionProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "btnUrl["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PromotionProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bannerPortUrl["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PromotionProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bannerLandUrl["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v0

    sget-object v8, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v8}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v8

    if-ne v0, v8, :cond_1

    const-string v0, "pbtn"

    :goto_0
    invoke-static {v7, v4, v0}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->downloadImageSupportedFileCache(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->getResult()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v0

    sget-object v8, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v8}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v8

    if-ne v0, v8, :cond_3

    const-string v0, "pbanp"

    :goto_2
    invoke-static {v5, v4, v0}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->downloadImageSupportedFileCache(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_3
    const/4 v0, 0x1

    invoke-static {}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->getResult()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v0

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v9

    if-ne v0, v9, :cond_5

    const-string v0, "pbanl"

    :goto_4
    invoke-static {v6, v4, v0}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->downloadImageSupportedFileCache(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/hangame/hsp/cgp/processor/ImageDownloadUtil;->getResult()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->setImageInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getBubbleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v10

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getButtonUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-direct/range {v0 .. v13}, Lcom/hangame/hsp/cgp/model/PromotionItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;ILjava/lang/String;)V

    :goto_5
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "rbtn"

    goto :goto_0

    :cond_2
    move-object v7, v9

    goto :goto_1

    :cond_3
    const-string v0, "rbanp"

    goto :goto_2

    :cond_4
    move-object v8, v9

    goto :goto_3

    :cond_5
    const-string v0, "rbanl"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "PromotionProcessor"

    const-string v2, "Fail to set PromotionInfo."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-direct {v0}, Lcom/hangame/hsp/cgp/model/PromotionItem;-><init>()V

    goto :goto_5
.end method

.method public static getPromotionInfo(Lcom/hangame/hsp/cgp/response/CGPResponse;)Ljava/util/HashMap;
    .locals 14

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->values()[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    move-result-object v8

    move v2, v3

    :goto_1
    array-length v0, v8

    if-ge v2, v0, :cond_f

    aget-object v0, v8, v2

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/response/CGPData;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getServiceType()I

    move-result v5

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->CROSS_GAME_PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->getValue()I

    move-result v9

    if-ne v5, v9, :cond_5

    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->getValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v5, v9, :cond_2

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v5

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v9

    if-eq v5, v9, :cond_3

    :cond_2
    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->ONEPLUSONE:Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->getValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v5, v9, :cond_5

    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v5

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v9

    if-ne v5, v9, :cond_5

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v5

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/hangame/hsp/cgp/core/CGPService;->checkGameInstallation(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v5

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v9

    if-ne v5, v9, :cond_6

    invoke-static {v1}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->shouldExposePromotion(Lcom/hangame/hsp/cgp/response/CGPData;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_6
    :try_start_0
    aget-object v5, v8, v2

    invoke-static {v1, v5}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->getPromotionData(Lcom/hangame/hsp/cgp/response/CGPData;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_4
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v10

    if-eq v9, v10, :cond_9

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v9

    sget-object v10, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v10}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v10

    if-eq v9, v10, :cond_7

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v1

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v9

    if-eq v1, v9, :cond_8

    aget-object v1, v8, v2

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v1

    sget-object v9, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v9}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v9

    if-ne v1, v9, :cond_8

    :cond_7
    invoke-static {v5}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->isSupportableImage(Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_8
    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonImg()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandImg()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortImg()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getRewardCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v9, 0x1

    if-eq v1, v9, :cond_4

    :cond_9
    aget-object v1, v8, v2

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v5}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->sortPromoListAndAdd(Ljava/util/List;Lcom/hangame/hsp/cgp/model/PromotionItem;)V

    aget-object v5, v8, v2

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catch_0
    move-exception v5

    new-instance v5, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-direct {v5}, Lcom/hangame/hsp/cgp/model/PromotionItem;-><init>()V

    goto :goto_4

    :cond_a
    aget-object v0, v8, v2

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_e

    aget-object v0, v8, v2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move v5, v3

    move v4, v3

    :goto_5
    if-ge v5, v11, :cond_c

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v12

    sget-object v13, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v13}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v13

    if-ne v12, v13, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x1

    :goto_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    goto :goto_5

    :cond_b
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_6

    :cond_c
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    aget-object v0, v8, v2

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_f
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static isSupportableImage(Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerPortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionBannerLandUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getButtonUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestCGPServer(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;
    .locals 8

    new-instance v1, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;-><init>()V

    new-instance v2, Lcom/hangame/hsp/cgp/processor/PromotionProcessor$1;

    invoke-direct {v2, v1}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor$1;-><init>(Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;)V

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v4, p0, Lcom/hangame/hsp/cgp/request/HttpRequest;->parameterMap:Ljava/util/Map;

    const-string v0, "memberNo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->memberNo:J

    const-string v0, "gameNo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->gameNo:I

    const-string v0, "gameVersion"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->gameVersion:Ljava/lang/String;

    const-string v0, "deviceInfo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->deviceInfo:I

    const-string v0, "deviceId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->deviceId:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPromotionList;->countryCode:Ljava/lang/String;

    sget-object v4, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {v3, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->lock:Ljava/lang/Object;

    const-wide/32 v2, 0x157c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v4

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "PromotionProcessor"

    const-string v3, "requestCGPServer exception : "

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static shouldExposePromotion(Lcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->isRewardBeforePromotion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->checkGameInstallation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->ONEPLUSONE:Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPVersion;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static sortPromoListAndAdd(Ljava/util/List;Lcom/hangame/hsp/cgp/model/PromotionItem;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v2

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v0

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
