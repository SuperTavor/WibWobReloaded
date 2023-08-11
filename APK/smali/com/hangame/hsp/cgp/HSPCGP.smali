.class public Lcom/hangame/hsp/cgp/HSPCGP;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "HSPCGP"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)Z

    move-result v0

    return v0
.end method

.method public static checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;)Z

    move-result v0

    return v0
.end method

.method public static completeInstallPromotion(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "HSPCGP"

    const-string v1, "there is no install reward"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v4

    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {p0, v1}, Lcom/hangame/hsp/cgp/HSPCGP;->completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    const-string v0, "HSPCGP"

    const-string v1, "there is no install reward"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v0

    return v0
.end method

.method public static completePromotion(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "HSPCGP"

    const-string v1, "there is no reward"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v4

    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-static {p0, v1}, Lcom/hangame/hsp/cgp/HSPCGP;->completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    const-string v0, "HSPCGP"

    const-string v1, "there is no reward"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v0

    return v0
.end method

.method public static deletePromotion(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService;->deletePromotion(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getPromotionInfo()Lcom/hangame/hsp/cgp/model/PromotionInfo;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionInfo()Lcom/hangame/hsp/cgp/model/PromotionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPromotionInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static launchPromotion(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->getPromotionInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v1, "HSPCGP"

    const-string v2, "there is no promotion."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionItem;

    invoke-static {p0, v0}, Lcom/hangame/hsp/cgp/HSPCGP;->launchPromotion(Landroid/app/Activity;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public static launchPromotion(Landroid/app/Activity;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->launchPromotion(Landroid/app/Activity;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z

    move-result v0

    return v0
.end method

.method public static launchPromotionListInWeb(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService;->launchFreeCharge(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static sendCustomData(Ljava/lang/String;JLcom/hangame/hsp/cgp/HSPCGP$HSPSendCustomDataCB;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/cgp/core/CGPService;->sendCustomData(Ljava/lang/String;JLcom/hangame/hsp/cgp/HSPCGP$HSPSendCustomDataCB;)Z

    move-result v0

    return v0
.end method
