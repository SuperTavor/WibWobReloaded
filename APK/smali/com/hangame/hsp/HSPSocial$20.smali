.class final Lcom/hangame/hsp/HSPSocial$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;->profileList:Ljava/util/Vector;

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
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;->idpIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    invoke-interface {v0, v2, v3, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;->onMemberIDsReceive(Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetIdpIdOnWhiteList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v6, v6, v1}, Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;->onMemberIDsReceive(Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$20;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;

    invoke-interface {v0, v6, v6, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;->onMemberIDsReceive(Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
