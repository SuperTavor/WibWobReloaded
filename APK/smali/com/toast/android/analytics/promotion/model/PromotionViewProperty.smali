.class public Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;
.super Ljava/lang/Object;


# instance fields
.field mBackgroundImageUrl:Ljava/lang/String;

.field mBottomOfClickArea:F

.field mImageHeight:I

.field mImageWidth:I

.field mLandImgHorizontalRatio:F

.field mLeftOfClickArea:F

.field mMargin:F

.field mMarginType:Ljava/lang/String;

.field mPortImgHorizontalRatio:F

.field mRightOfClickArea:F

.field mTopOfClickArea:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithMap(Lorg/json/JSONObject;)Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;
    .locals 4

    new-instance v1, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    invoke-direct {v1}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;-><init>()V

    :try_start_0
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setImageWidth(I)V

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setImageHeight(I)V

    const-string v0, "portImgHorizontalRatio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setPortImgHorizontalRatio(F)V

    const-string v0, "landImgHorizontalRatio"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setLandImgHorizontalRatio(F)V

    const-string v0, "margin"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setMargin(F)V

    const-string v0, "marginType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->setMarginType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomOfClickArea()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mBottomOfClickArea:F

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mImageWidth:I

    return v0
.end method

.method public getLandImgHorizontalRatio()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mLandImgHorizontalRatio:F

    return v0
.end method

.method public getLeftOfClickArea()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mLeftOfClickArea:F

    return v0
.end method

.method public getMargin()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mMargin:F

    return v0
.end method

.method public getMarginType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mMarginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPortImgHorizontalRatio()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mPortImgHorizontalRatio:F

    return v0
.end method

.method public getRightOfClickArea()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mRightOfClickArea:F

    return v0
.end method

.method public getTopOfClickArea()F
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mTopOfClickArea:F

    return v0
.end method

.method public setBackgroundImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mBackgroundImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setBottomOfClickArea(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mBottomOfClickArea:F

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mImageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mImageWidth:I

    return-void
.end method

.method public setLandImgHorizontalRatio(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mLandImgHorizontalRatio:F

    return-void
.end method

.method public setLeftOfClickArea(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mLeftOfClickArea:F

    return-void
.end method

.method public setMargin(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mMargin:F

    return-void
.end method

.method public setMarginType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mMarginType:Ljava/lang/String;

    return-void
.end method

.method public setPortImgHorizontalRatio(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mPortImgHorizontalRatio:F

    return-void
.end method

.method public setRightOfClickArea(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mRightOfClickArea:F

    return-void
.end method

.method public setTopOfClickArea(F)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->mTopOfClickArea:F

    return-void
.end method
