.class final Lcom/hangame/hsp/HSPSocial$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPSocialCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

.field final synthetic val$count:I

.field final synthetic val$index:I

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(ZLcom/hangame/hsp/HSPSocialCache;IILcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPSocial$13;->val$useCache:Z

    iput-object p2, p0, Lcom/hangame/hsp/HSPSocial$13;->val$cacheDb:Lcom/hangame/hsp/HSPSocialCache;

    iput p3, p0, Lcom/hangame/hsp/HSPSocial$13;->val$index:I

    iput p4, p0, Lcom/hangame/hsp/HSPSocial$13;->val$count:I

    iput-object p5, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;->profileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$useCache:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;->profileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$cacheDb:Lcom/hangame/hsp/HSPSocialCache;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v2, v1}, Lcom/hangame/hsp/HSPSocialCache;->insert(Ljava/util/List;Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$cacheDb:Lcom/hangame/hsp/HSPSocialCache;

    iget v1, p0, Lcom/hangame/hsp/HSPSocial$13;->val$index:I

    iget v3, p0, Lcom/hangame/hsp/HSPSocial$13;->val$count:I

    sget-object v4, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPSocialCache;->selectList(IILcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$13;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
