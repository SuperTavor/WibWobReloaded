.class public Lcom/hangame/hsp/cgp/model/PromotionInfo;
.super Ljava/lang/Object;


# instance fields
.field private bubbleText:Ljava/lang/String;

.field private bubbleText_install:Ljava/lang/String;

.field private buttonImg:Landroid/graphics/Bitmap;

.field private buttonImg_install:Landroid/graphics/Bitmap;

.field private buttonUrl:Ljava/lang/String;

.field private buttonUrl_install:Ljava/lang/String;

.field private eventUrl:Ljava/lang/String;

.field private eventUrl_install:Ljava/lang/String;

.field private promotionBannerLandImg:Landroid/graphics/Bitmap;

.field private promotionBannerLandImg_install:Landroid/graphics/Bitmap;

.field private promotionBannerLandUrl:Ljava/lang/String;

.field private promotionBannerLandUrl_install:Ljava/lang/String;

.field private promotionBannerPortImg:Landroid/graphics/Bitmap;

.field private promotionBannerPortImg_install:Landroid/graphics/Bitmap;

.field private promotionBannerPortUrl:Ljava/lang/String;

.field private promotionBannerPortUrl_install:Ljava/lang/String;

.field private promotionId:I

.field private rewardCode:Ljava/lang/String;

.field private rewardCode_install:Ljava/lang/String;

.field private rewardValue:I

.field private rewardValue_install:I

.field private typeCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    iput v2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl_install:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg_install:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg_install:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg_install:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode_install:Ljava/lang/String;

    iput v2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue_install:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl_install:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    iput-object p2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    iput p9, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    iput-object p10, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    iput p11, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    iput-object p12, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl_install:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl_install:Ljava/lang/String;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg_install:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg_install:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg_install:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode_install:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue_install:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl_install:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    iput-object p2, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    iput p9, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    iput-object p10, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    iput p11, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    iput-object p12, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    iput-object p13, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText_install:Ljava/lang/String;

    iput-object p14, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl_install:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl_install:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl_install:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg_install:Landroid/graphics/Bitmap;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg_install:Landroid/graphics/Bitmap;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg_install:Landroid/graphics/Bitmap;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode_install:Ljava/lang/String;

    move/from16 v0, p21

    iput v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue_install:I

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl_install:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBubbleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleText_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText_install:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonImg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getButtonImg_install()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg_install:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getButtonUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonUrl_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl_install:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl_install:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionBannerLandImg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromotionBannerLandImg_install()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg_install:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromotionBannerLandUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionBannerLandUrl_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl_install:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionBannerPortImg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromotionBannerPortImg_install()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg_install:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromotionBannerPortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionBannerPortUrl_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl_install:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionId()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    return v0
.end method

.method public getRewardCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardCode_install()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode_install:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    return v0
.end method

.method public getRewardValue_install()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue_install:I

    return v0
.end method

.method public getTypeCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    return v0
.end method

.method public setBubbleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    return-void
.end method

.method public setBubbleText_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText_install:Ljava/lang/String;

    return-void
.end method

.method public setButtonImg(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setButtonImg_install(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg_install:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setButtonUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    return-void
.end method

.method public setButtonUrl_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl_install:Ljava/lang/String;

    return-void
.end method

.method public setEventUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    return-void
.end method

.method public setEventUrl_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl_install:Ljava/lang/String;

    return-void
.end method

.method public setPromotionBannerLandImg(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPromotionBannerLandImg_install(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg_install:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPromotionBannerLandUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    return-void
.end method

.method public setPromotionBannerLandUrl_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl_install:Ljava/lang/String;

    return-void
.end method

.method public setPromotionBannerPortImg(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPromotionBannerPortImg_install(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg_install:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPromotionBannerPortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    return-void
.end method

.method public setPromotionBannerPortUrl_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl_install:Ljava/lang/String;

    return-void
.end method

.method public setPromotionId(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    return-void
.end method

.method public setRewardCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    return-void
.end method

.method public setRewardCode_install(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode_install:Ljava/lang/String;

    return-void
.end method

.method public setRewardValue(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    return-void
.end method

.method public setRewardValue_install(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue_install:I

    return-void
.end method

.method public setTypeCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PromotionInfo [promotionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bubbleText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->bubbleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionBannerPortUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionBannerLandUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->buttonImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionBannerPortImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerPortImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionBannerLandImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->promotionBannerLandImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->typeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rewardCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->rewardValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/model/PromotionInfo;->eventUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
