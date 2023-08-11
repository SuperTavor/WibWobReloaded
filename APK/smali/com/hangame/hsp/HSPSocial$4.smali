.class final Lcom/hangame/hsp/HSPSocial$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

.field final synthetic val$memberNos:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$4;->val$memberNos:Ljava/util/List;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 12

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;-><init>()V

    invoke-static {v2, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPProfileCache;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;->profileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    new-instance v8, Lcom/hangame/hsp/HSPProfile;

    invoke-direct {v8}, Lcom/hangame/hsp/HSPProfile;-><init>()V

    iget-wide v10, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    iput-wide v10, v8, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/hangame/hsp/HSPProfile;->mIsOnline:Z

    const-string v1, "D"

    iget-object v9, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->validCode:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v8, Lcom/hangame/hsp/HSPProfile;->mIsValid:Z

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->nickname:Ljava/lang/String;

    iput-object v1, v8, Lcom/hangame/hsp/HSPProfile;->mNickname:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->exposeOnline:Z

    iput-boolean v1, v8, Lcom/hangame/hsp/HSPProfile;->mExposeOnline:Z

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->lastLoginTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v8, Lcom/hangame/hsp/HSPProfile;->mLastLoginDate:Ljava/util/Date;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->recentlyPlayedGameNo:I

    iput v1, v8, Lcom/hangame/hsp/HSPProfile;->mRecentPlayedGameNo:I

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->reserved:Ljava/lang/String;

    iput-object v1, v8, Lcom/hangame/hsp/HSPProfile;->mReserved:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v5, v8}, Lcom/hangame/hsp/HSPProfileCache;->insert(Lcom/hangame/hsp/HSPProfile;)J

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v1

    iget-wide v10, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    sget-object v9, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v1, v10, v11, v9}, Lcom/hangame/hsp/HSPDetailedProfileCache;->update(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HSPSocial"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HSPDetailedProfileCache RelationType Update Fail !!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, v8, Lcom/hangame/hsp/HSPProfile;->mMemberNo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;->profileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v4, v6, v0}, Lcom/hangame/hsp/HSPSocialCache;->insert(Ljava/util/List;Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$memberNos:Ljava/util/List;

    invoke-virtual {v5, v0}, Lcom/hangame/hsp/HSPProfileCache;->selectMemberNos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    invoke-interface {v0, v6, p2}, Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;->onMembersBlock(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$200()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$200()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPSocial$HSPAddBlockingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v6}, Lcom/hangame/hsp/HSPSocial$HSPAddBlockingListener;->onBlockingAdd(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPSocial"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPSocial;->access$100(ILcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    const/4 v1, 0x0

    const-string v3, "MASHUP"

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsAddInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v3, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;->onMembersBlock(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$4;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;->onMembersBlock(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3
.end method
