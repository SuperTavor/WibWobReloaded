.class final Lcom/hangame/hsp/HSPProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPProfileCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

.field final synthetic val$memberNos:Ljava/util/List;

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;ZLcom/hangame/hsp/HSPProfileCache;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$2;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPProfile$2;->val$useCache:Z

    iput-object p3, p0, Lcom/hangame/hsp/HSPProfile$2;->val$cacheDb:Lcom/hangame/hsp/HSPProfileCache;

    iput-object p4, p0, Lcom/hangame/hsp/HSPProfile$2;->val$memberNos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;-><init>()V

    invoke-static {v2, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;->profileMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;

    new-instance v5, Lcom/hangame/hsp/HSPProfile;

    invoke-direct {v5}, Lcom/hangame/hsp/HSPProfile;-><init>()V

    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->memberNo:J

    iput-wide v6, v5, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    iget-boolean v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->online:Z

    iput-boolean v1, v5, Lcom/hangame/hsp/HSPProfile;->mIsOnline:Z

    const-string v1, "D"

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->validCode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v5, Lcom/hangame/hsp/HSPProfile;->mIsValid:Z

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->nickname:Ljava/lang/String;

    iput-object v1, v5, Lcom/hangame/hsp/HSPProfile;->mNickname:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->exposeOnline:Z

    iput-boolean v1, v5, Lcom/hangame/hsp/HSPProfile;->mExposeOnline:Z

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->lastLoginTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v5, Lcom/hangame/hsp/HSPProfile;->mLastLoginDate:Ljava/util/Date;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->recentlyPlayedGameNo:I

    iput v1, v5, Lcom/hangame/hsp/HSPProfile;->mRecentPlayedGameNo:I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline;->reserved:Ljava/lang/String;

    iput-object v0, v5, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetProfileOnline: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v5, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v5, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$useCache:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$cacheDb:Lcom/hangame/hsp/HSPProfileCache;

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/HSPProfileCache;->insert(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$cacheDb:Lcom/hangame/hsp/HSPProfileCache;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile$2;->val$memberNos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPProfileCache;->selectProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;->onProfilesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    const-string v1, "MASHUP"

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileOnlineList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;->onProfilesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$2;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;->onProfilesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
