.class Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field private final mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

.field private mMemberNo:J

.field private mResData1:[B

.field private mResData2:[B

.field private mResult1:Lcom/hangame/hsp/HSPResult;

.field private mResult2:Lcom/hangame/hsp/HSPResult;

.field final synthetic this$0:Lcom/hangame/hsp/HSPProfile;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile;JLcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->this$0:Lcom/hangame/hsp/HSPProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    iput-wide p2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    return-object v0
.end method

.method private onLoadDetailedProfile()V
    .locals 14

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;-><init>()V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;-><init>()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResData1:[B

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResData2:[B

    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_11

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPPunishmentCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPunishmentCache;

    move-result-object v4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v5

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPlayedGameNoCache;

    move-result-object v6

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;

    new-instance v10, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;

    invoke-direct {v10}, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;-><init>()V

    iget-object v11, v0, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;->punishCode:Ljava/lang/String;

    invoke-static {v11}, Lcom/hangame/hsp/HSPCacheManager;->getPunishmentType(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    move-result-object v11

    iput-object v11, v10, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mType:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    iget v11, v0, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;->punishCount:I

    iput v11, v10, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mCount:I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;->punishValidDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v10, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mReleaseDate:Ljava/util/Date;

    iget-object v0, v10, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mType:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;

    new-instance v11, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    invoke-direct {v11}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;-><init>()V

    iget-object v12, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;->idpCode:Ljava/lang/String;

    invoke-static {v12}, Lcom/hangame/hsp/HSPCacheManager;->getIdpCode(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    move-result-object v12

    iput-object v12, v11, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    iget-object v12, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;->idpId:Ljava/lang/String;

    iput-object v12, v11, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;->expose:Z

    iput-boolean v0, v11, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    iget-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mCode:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-interface {v9, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v11, Lcom/hangame/hsp/HSPDetailedProfile;

    invoke-direct {v11}, Lcom/hangame/hsp/HSPDetailedProfile;-><init>()V

    iget-wide v12, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    iput-wide v12, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    iget v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mIsAdmin:Z

    iget-byte v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;->forwardRelationType:B

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfile;->access$100(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    move-result-object v0

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    iget-byte v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;->backwardRelationType:B

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfile;->access$100(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    move-result-object v0

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    iget-boolean v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    iput-boolean v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mIsNicknameChanged:Z

    iget-byte v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    iput v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mAge:I

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    :goto_4
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mTodayWords:Ljava/lang/String;

    iget-boolean v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    iput-boolean v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeAge:Z

    iget-boolean v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    iput-boolean v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeGender:Z

    iput-object v8, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    iput-object v9, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    iput-object v10, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mGameUserData:Ljava/lang/String;

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->this$0:Lcom/hangame/hsp/HSPProfile;

    iput-object v11, v0, Lcom/hangame/hsp/HSPProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    if-eqz v3, :cond_4

    invoke-virtual {v7, v11}, Lcom/hangame/hsp/HSPDetailedProfileCache;->insert(Lcom/hangame/hsp/HSPDetailedProfile;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v7, v0, v1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->select(J)Lcom/hangame/hsp/HSPDetailedProfile;

    move-result-object v1

    const/4 v0, 0x1

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v4, v2, v3, v8}, Lcom/hangame/hsp/HSPPunishmentCache;->insert(JLjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v4, v2, v3}, Lcom/hangame/hsp/HSPPunishmentCache;->select(J)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_a

    iput-object v8, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    :goto_6
    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v5, v2, v3, v9}, Lcom/hangame/hsp/HSPIdpInfoCache;->insert(JLjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v5, v2, v3}, Lcom/hangame/hsp/HSPIdpInfoCache;->select(J)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_c

    iput-object v9, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    :goto_7
    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v6, v2, v3, v10}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->insert(JLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-virtual {v6, v2, v3}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->select(J)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_e

    iput-object v10, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    :goto_8
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->this$0:Lcom/hangame/hsp/HSPProfile;

    iput-object v1, v0, Lcom/hangame/hsp/HSPProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    :cond_4
    :goto_9
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$2;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_a
    return-void

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_7
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    goto/16 :goto_4

    :cond_8
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    goto/16 :goto_4

    :cond_9
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    iput-object v2, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    iput-object v2, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iput-object v2, v1, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    iget-wide v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mMemberNo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->delete(Ljava/lang/Long;)Z

    goto :goto_9

    :cond_11
    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$3;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_12
    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$4;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$4;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelation;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$5;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$6;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mCallback:Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const-string v0, "HSPProfile"

    const-string v1, "we need Mashup online"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler$1;-><init>(Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    iput-object p3, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResData1:[B

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->onLoadDetailedProfile()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    iput-object p3, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResData2:[B

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;->onLoadDetailedProfile()V

    goto :goto_0
.end method
