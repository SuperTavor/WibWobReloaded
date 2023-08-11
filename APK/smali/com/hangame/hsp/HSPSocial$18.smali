.class final Lcom/hangame/hsp/HSPSocial$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameUserList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameUserList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameUserList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameUserList;->profileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameUserList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$18;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;->onMembersReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
