.class public final Lcom/hangame/hsp/HSPDetailedProfile;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPDetailedProfile"


# instance fields
.field mAge:I

.field mExposeAge:Z

.field mExposeGender:Z

.field mGameUserData:Ljava/lang/String;

.field mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

.field mIDPInfoMap:Ljava/util/Map;

.field mIsAdmin:Z

.field mIsNicknameChanged:Z

.field mMemberNo:J

.field mPhoneNo:Ljava/lang/String;

.field mPlayedGameNoList:Ljava/util/List;

.field mPunishmentInfoMap:Ljava/util/Map;

.field mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

.field mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

.field mTodayWords:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 4

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeAge:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mAge:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGameUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mGameUserData:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;
    .locals 4

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeGender:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    goto :goto_0
.end method

.method public getIdpID(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mIDPID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayedGameNoList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    return-object v0
.end method

.method public getPunishmentCount(Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;)I
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPunishmentEndDate(Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentInfo;->mReleaseDate:Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelationTypeFromMe()Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    return-object v0
.end method

.method public getRelationTypeToMe()Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    return-object v0
.end method

.method public getTodayWords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mTodayWords:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIsAdmin:Z

    return v0
.end method

.method public isAgeExposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeAge:Z

    return v0
.end method

.method public isGenderExposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeGender:Z

    return v0
.end method

.method public isIdpIDExposed(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPInfo;->mExposeID:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNicknameChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIsNicknameChanged:Z

    return v0
.end method

.method public loadNameInAddressBook(Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;)V
    .locals 2

    const-string v0, "HSPDetailedProfile"

    const-string v1, "loadNameInAddressBook()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->readContacts()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPDetailedProfile$1;-><init>(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    new-instance v1, Lcom/hangame/hsp/HSPDetailedProfile$2;

    invoke-direct {v1, p0, p1}, Lcom/hangame/hsp/HSPDetailedProfile$2;-><init>(Lcom/hangame/hsp/HSPDetailedProfile;Lcom/hangame/hsp/HSPDetailedProfile$HSPLoadNameInAddressBookCB;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/contact/ContactProvider;->searchContacWithtEncryptPhoneNo(Ljava/lang/String;Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPDetailedProfile [MemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", IsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIsAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RelationTypeFromMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RelationTypeToMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", IsNicknameChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mIsNicknameChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeAge:Z

    if-eqz v1, :cond_0

    const-string v1, ", Age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeGender:Z

    if-eqz v1, :cond_1

    const-string v1, ", Gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", TodayWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mTodayWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PunishmentInfoMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfile;->isIdpIDExposed(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IdpID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfile;->getIdpID(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfile;->isIdpIDExposed(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IdpID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfile;->getIdpID(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ", PlayedGameNoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", GameUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mGameUserData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
