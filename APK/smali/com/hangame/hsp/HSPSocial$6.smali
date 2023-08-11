.class final Lcom/hangame/hsp/HSPSocial$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

.field final synthetic val$memberNos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSocial$6;->val$memberNos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteInRelationList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteInRelationList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    invoke-interface {v1, p2}, Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;->onMembersUnfollow(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$memberNos:Ljava/util/List;

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/HSPSocialCache;->delete(Ljava/util/List;Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$6;->val$memberNos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v0

    sget-object v4, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v2, v3, v4}, Lcom/hangame/hsp/HSPDetailedProfileCache;->update(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HSPSocial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HSPDetailedProfileCache RelationType Update Fail !!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$300()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPSocial;->access$300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPSocial$HSPRemoveFollowingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/hangame/hsp/HSPSocial$6;->val$memberNos:Ljava/util/List;

    invoke-interface {v0, v3}, Lcom/hangame/hsp/HSPSocial$HSPRemoveFollowingListener;->onFollowingRemove(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPSocial"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;->onMembersUnfollow(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$6;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;->onMembersUnfollow(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
