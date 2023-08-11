.class public Lcom/toast/android/analytics/promotion/model/Promotion;
.super Ljava/lang/Object;


# instance fields
.field mAllowAlreadyInstalledUser:Z

.field mCampaignId:I

.field mCloseImgUrl:Ljava/lang/String;

.field mCloseType:Ljava/lang/String;

.field mCustomKey:Ljava/lang/String;

.field mCustomValue:J

.field mDataType:Ljava/lang/String;

.field mEnableSkipOption:Ljava/lang/String;

.field mExpire:Ljava/lang/String;

.field mFrameImageUrl:Ljava/lang/String;

.field mFrameType:Ljava/lang/String;

.field mImpressionType:Ljava/lang/String;

.field mIsRepeatImpression:Ljava/lang/String;

.field mLandingType:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

.field mLandingUrl:Ljava/lang/String;

.field mLandscapeImgUrl:Ljava/lang/String;

.field mMissionType:Ljava/lang/String;

.field mModifiedTime:J

.field mPortraitImgUrl:Ljava/lang/String;

.field mPromoId:I

.field mPromotionName:Ljava/lang/String;

.field mProperty:Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

.field mRepeatOptionColor:Ljava/lang/String;

.field mRepeatOptionSentence:Ljava/lang/String;

.field mRepeatOptionText:Ljava/lang/String;

.field mReserved:Ljava/lang/String;

.field mRewardCode:Ljava/lang/String;

.field mRewardValue:I

.field mSkipOptionColor:Ljava/lang/String;

.field mSkipOptionText:I

.field mStartupImgUrl:Ljava/lang/String;

.field mTargetPackageName:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field mUserType:I

.field promotionDateBegin:Ljava/util/Date;

.field promotionDateEnd:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithMapData(Lorg/json/JSONObject;)Lcom/toast/android/analytics/promotion/model/Promotion;
    .locals 41

    const/4 v3, 0x0

    :try_start_0
    const-string v2, "dataType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v2, "promoId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string v2, "campaignId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string v2, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v2, "impressionType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v2, "frameType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v2, "frameImgUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v2, "closeType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v2, "closeImgUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v2, "portraitImgUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v2, "landscapeImgurl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    sget-object v12, Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;->WebLink:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v23, "promo"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v7, "modifiedTime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v7, "missionType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v7, "promoDateEnd"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "targetPackageName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "startupImgUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "landingType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const-string v7, "landingType"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_4

    sget-object v12, Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;->DeepLink:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    :goto_0
    const-string v7, "landingUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "isRepeatImpression"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "repeatOptionSentence"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "repeatOptionColor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "repeatOptionText"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v6, "allowAlreadyInstalledUser"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_0
    const-string v20, "customKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v20, "customValue"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v36, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v36, "GMT"

    invoke-static/range {v36 .. v36}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v36, "promoDateBegin"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_1

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    :cond_1
    const-string v36, "promoDateEnd"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_2

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_2

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    :cond_2
    move-object/from16 v38, v17

    move-object/from16 v17, v2

    move-wide/from16 v39, v20

    move-object/from16 v20, v38

    move-object/from16 v21, v22

    move-wide/from16 v22, v39

    :goto_1
    new-instance v2, Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-direct {v2}, Lcom/toast/android/analytics/promotion/model/Promotion;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setDataType(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPromoId(I)V

    invoke-virtual {v2, v15}, Lcom/toast/android/analytics/promotion/model/Promotion;->setExpire(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setCampaignId(I)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setType(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPromotionName(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/toast/android/analytics/promotion/model/Promotion;->setModifiedTime(J)V

    invoke-virtual {v2, v14}, Lcom/toast/android/analytics/promotion/model/Promotion;->setTargetPackageName(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setMissionType(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setImpressionType(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/toast/android/analytics/promotion/model/Promotion;->setAllowAlreadyInstalledUser(Z)V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setFrameType(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setFrameImageUrl(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setCloseType(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setCloseImgUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/toast/android/analytics/promotion/model/Promotion;->setStartupImgUrl(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPortraitImgUrl(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setLandscapeImgUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/toast/android/analytics/promotion/model/Promotion;->setLandingType(Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;)V

    invoke-virtual {v2, v11}, Lcom/toast/android/analytics/promotion/model/Promotion;->setLandingUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/toast/android/analytics/promotion/model/Promotion;->setRewardCode(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/toast/android/analytics/promotion/model/Promotion;->setRewardValue(I)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setCustomKey(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/toast/android/analytics/promotion/model/Promotion;->setCustomValue(J)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPromotionDateBegin(Ljava/util/Date;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPromotionDateEnd(Ljava/util/Date;)V

    invoke-direct {v2, v10}, Lcom/toast/android/analytics/promotion/model/Promotion;->setIsRepeatImpression(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/toast/android/analytics/promotion/model/Promotion;->setRepeatOptionSentence(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/toast/android/analytics/promotion/model/Promotion;->setRepeatOptionColor(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/toast/android/analytics/promotion/model/Promotion;->setRepeatOptionText(Ljava/lang/String;)V

    const-string v3, "impressionPosition"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->createWithMap(Lorg/json/JSONObject;)Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/promotion/model/Promotion;->setPromotionViewProperty(Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    :try_start_2
    sget-object v12, Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;->WebLink:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    goto/16 :goto_0

    :cond_5
    sget-object v12, Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;->WebLink:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    goto/16 :goto_0

    :cond_6
    const-string v4, "rewardCode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "rewardValue"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    move-object/from16 v38, v17

    move-object/from16 v17, v2

    move-wide/from16 v39, v20

    move-object/from16 v20, v38

    move-object/from16 v21, v22

    move-wide/from16 v22, v39

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v38, v2

    move-object v2, v3

    move-object/from16 v3, v38

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method private setIsRepeatImpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mIsRepeatImpression:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCampaignId()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCampaignId:I

    return v0
.end method

.method public getCloseImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseType:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCustomKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomValue()J
    .locals 2

    iget-wide v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCustomValue:J

    return-wide v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableSkipOption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mEnableSkipOption:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameType:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mImpressionType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRepeatImpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mIsRepeatImpression:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingType()Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandingType:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    return-object v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscapeImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandscapeImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMissionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mMissionType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mModifiedTime:J

    return-wide v0
.end method

.method public getPortraitImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPortraitImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoId()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromoId:I

    return v0
.end method

.method public getPromotionDateBegin()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->promotionDateBegin:Ljava/util/Date;

    return-object v0
.end method

.method public getPromotionDateEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->promotionDateEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPromotionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromotionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionViewProperty()Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mProperty:Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    return-object v0
.end method

.method public getRepeatOptionColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatOptionSentence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionSentence:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatOptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionText:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mReserved:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardValue()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardValue:I

    return v0
.end method

.method public getSkipOptionColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOptionText()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionText:I

    return v0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mUserType:I

    return v0
.end method

.method public getmStartupImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mStartupImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowAlreadyInstalledUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mAllowAlreadyInstalledUser:Z

    return v0
.end method

.method public isPromotion()Z
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mDataType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mDataType:Ljava/lang/String;

    const-string v1, "promo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartMission()Z
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mMissionType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mMissionType:Ljava/lang/String;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowAlreadyInstalledUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mAllowAlreadyInstalledUser:Z

    return-void
.end method

.method public setCampaignId(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCampaignId:I

    return-void
.end method

.method public setCloseImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setCloseType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseType:Ljava/lang/String;

    return-void
.end method

.method public setCustomKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCustomKey:Ljava/lang/String;

    return-void
.end method

.method public setCustomValue(J)V
    .locals 1

    iput-wide p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCustomValue:J

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mDataType:Ljava/lang/String;

    return-void
.end method

.method public setEnableSkipOption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mEnableSkipOption:Ljava/lang/String;

    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mExpire:Ljava/lang/String;

    return-void
.end method

.method public setFrameImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setFrameType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameType:Ljava/lang/String;

    return-void
.end method

.method public setImpressionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mImpressionType:Ljava/lang/String;

    return-void
.end method

.method public setLandingType(Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandingType:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    return-void
.end method

.method public setLandingUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandingUrl:Ljava/lang/String;

    return-void
.end method

.method public setLandscapeImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandscapeImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMissionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mMissionType:Ljava/lang/String;

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mModifiedTime:J

    return-void
.end method

.method public setPortraitImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPortraitImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setPromoId(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromoId:I

    return-void
.end method

.method public setPromotionDateBegin(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->promotionDateBegin:Ljava/util/Date;

    return-void
.end method

.method public setPromotionDateEnd(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->promotionDateEnd:Ljava/util/Date;

    return-void
.end method

.method public setPromotionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromotionName:Ljava/lang/String;

    return-void
.end method

.method public setPromotionViewProperty(Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mProperty:Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mProperty:Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mProperty:Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    return-void
.end method

.method public setRepeatOptionColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionColor:Ljava/lang/String;

    return-void
.end method

.method public setRepeatOptionSentence(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionSentence:Ljava/lang/String;

    return-void
.end method

.method public setRepeatOptionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRepeatOptionText:Ljava/lang/String;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mReserved:Ljava/lang/String;

    return-void
.end method

.method public setRewardCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardCode:Ljava/lang/String;

    return-void
.end method

.method public setRewardValue(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardValue:I

    return-void
.end method

.method public setSkipOptionColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionColor:Ljava/lang/String;

    return-void
.end method

.method public setSkipOptionText(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionText:I

    return-void
.end method

.method public setStartupImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mStartupImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setTargetPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mTargetPackageName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mType:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mUserType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Promotion [mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPromoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCampainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCampaignId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPromotionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPromotionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mModifiedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMissionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mMissionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImpressionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mImpressionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowAlreadyInstalledUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mAllowAlreadyInstalledUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mFrameImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCloseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCloseImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mCloseImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartupImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mStartupImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortraitImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mPortraitImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLandscapeImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mLandscapeImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableSkipOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mEnableSkipOption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSkipOptionText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSkipOptionColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mSkipOptionColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRewardCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRewardValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mRewardValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/promotion/model/Promotion;->mReserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
