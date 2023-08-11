.class final Lcom/hangame/hsp/HSPSocial$23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

.field final synthetic val$phoneNos:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$23;->val$phoneNos:Ljava/util/List;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;-><init>()V

    invoke-static {v3, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$phoneNos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;->phoneNoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    invoke-interface {v0, v5, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;->onMembersReceive(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    const-string v1, "MASHUP"

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberPhoneNoList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;->onMembersReceive(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$23;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;->onMembersReceive(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3
.end method
