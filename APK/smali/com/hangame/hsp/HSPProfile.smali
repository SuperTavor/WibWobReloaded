.class public Lcom/hangame/hsp/HSPProfile;
.super Ljava/lang/Object;


# static fields
.field private static final RESERVED_PHOTO_URL_KEY:Ljava/lang/String; = "pho"

.field private static final RESERVED_THUMBNAIL_PHOTO_URL_KEY:Ljava/lang/String; = "thm"

.field private static final TAG:Ljava/lang/String; = "HSPProfile"


# instance fields
.field protected mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

.field protected mExposeOnline:Z

.field protected mIsOnline:Z

.field protected mIsValid:Z

.field protected mLastLoginDate:Ljava/util/Date;

.field protected mMemberNo:J

.field protected mNickname:Ljava/lang/String;

.field protected mRecentPlayedGameNo:I

.field protected mReserved:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/HSPProfile;->getRelationType(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    move-result-object v0

    return-object v0
.end method

.method public static final getProfileImageURL(JZ)Ljava/lang/String;
    .locals 4

    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileImageURL(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->useHangameProfileImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/hangame/hsp/server/HSPImageService;->getUserPhotoUrl(JIZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRelationType(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0
.end method

.method public static final loadProfiles(Ljava/util/List;Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;)V
    .locals 10

    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadProfiles(memberNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPProfileCache;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPProfile$2;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/hangame/hsp/HSPProfile$2;-><init>(Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;ZLcom/hangame/hsp/HSPProfileCache;Ljava/util/List;)V

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Lcom/hangame/hsp/HSPProfileCache;->selectProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPProfile;

    const-string v6, "HSPProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cache DB exist memberNo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HSPProfile"

    const-string v1, "All DB cache!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    new-instance v0, Lcom/hangame/hsp/HSPProfile$3;

    invoke-direct {v0, p1, v3}, Lcom/hangame/hsp/HSPProfile$3;-><init>(Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->requesterMemberNo:J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->requesterMemberNo:J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileOnlineList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_1
.end method

.method public static final queryCurrentGameNos(Ljava/util/List;Lcom/hangame/hsp/HSPProfile$HSPQueryCurrentGameNosCB;)V
    .locals 3

    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCurrentGameNos(memberNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPProfile$5;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPProfile$5;-><init>(Lcom/hangame/hsp/HSPProfile$HSPQueryCurrentGameNosCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetCurrentGameNo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetCurrentGameNo;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetCurrentGameNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetCurrentGameNo;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static final requestProfileImageUrls(Ljava/util/List;ZLcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;)V
    .locals 3

    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProfileImageUrls(memberNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPProfile$1;

    invoke-direct {v0, p2, p1}, Lcom/hangame/hsp/HSPProfile$1;-><init>(Lcom/hangame/hsp/HSPProfile$HSPRequestProileImageUrlsCB;Z)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPhotoUrlList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPhotoUrlList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPhotoUrlList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPhotoUrlList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public final downloadProfileImage(ZLcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;)V
    .locals 5

    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadProfileImage(isThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPProfile$4;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPProfile$4;-><init>(Lcom/hangame/hsp/HSPProfile;Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;)V

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/HSPProfile;->getProfileImageURL(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSPProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileImageUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadImage(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public final getDetailedProfile()Lcom/hangame/hsp/HSPDetailedProfile;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    return-object v0
.end method

.method public final getLastLoginDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mLastLoginDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    return-wide v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileImageURL(Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "HSPProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileImageURL(isThumbnail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->useHangameProfileImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/hangame/hsp/server/HSPImageService;->getUserPhotoUrl(JIZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json/simple/JSONObject;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v1, "thm"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v1, "pho"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final getRecentPlayedGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPProfile;->mRecentPlayedGameNo:I

    return v0
.end method

.method public final getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    return-object v0
.end method

.method public final isOnlineExposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPProfile;->mExposeOnline:Z

    return v0
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPProfile;->mIsValid:Z

    return v0
.end method

.method public final loadDetailedProfile(Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v0, "HSPProfile"

    const-string v1, "loadDetailedProfile"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPPunishmentCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPunishmentCache;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPlayedGameNoCache;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v3

    iget-wide v4, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v3, v4, v5}, Lcom/hangame/hsp/HSPDetailedProfileCache;->select(J)Lcom/hangame/hsp/HSPDetailedProfile;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "HSPProfile"

    const-string v5, "All DB cache!!"

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/HSPPunishmentCache;->select(J)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    :cond_0
    iget-wide v4, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/HSPIdpInfoCache;->select(J)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    :cond_1
    iget-wide v0, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v2, v0, v1}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->select(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    :cond_2
    iput-object v3, p0, Lcom/hangame/hsp/HSPProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPProfile$6;

    invoke-direct {v0, p0, p1, v3}, Lcom/hangame/hsp/HSPProfile$6;-><init>(Lcom/hangame/hsp/HSPProfile;Lcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;Lcom/hangame/hsp/HSPDetailedProfile;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;-><init>(Lcom/hangame/hsp/HSPProfile;JLcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->memberNo:J

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->targetMemberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->requesterMemberNo:J

    iget-wide v4, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->memberNo:J

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/hangame/hsp/HSPProfile$LoadDetailedProfileHandler;-><init>(Lcom/hangame/hsp/HSPProfile;JLcom/hangame/hsp/HSPProfile$HSPLoadDetailedProfileCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->memberNo:J

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelation;->targetMemberNo:J

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->requesterMemberNo:J

    iget-wide v4, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetProfileDetail;->memberNo:J

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPProfile [MemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile;->mNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IsValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPProfile;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ExposeOnline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPProfile;->mExposeOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", LastLoginDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile;->mLastLoginDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RecentPlayedGameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPProfile;->mRecentPlayedGameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DetailedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile;->mDetailedProfile:Lcom/hangame/hsp/HSPDetailedProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
