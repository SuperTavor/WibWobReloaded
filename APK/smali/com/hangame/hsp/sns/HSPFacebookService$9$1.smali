.class Lcom/hangame/hsp/sns/HSPFacebookService$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

.field final synthetic val$memberNoMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$9;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->val$memberNoMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v5, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;

    invoke-direct {v5}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;-><init>()V

    invoke-static {v5, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    new-instance v6, Ljava/util/LinkedHashMap;

    iget-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$fbIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$fbIdList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->val$memberNoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v8, 0x31

    if-ne v2, v8, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v8, Lcom/hangame/hsp/sns/HSPFacebookProfile;

    invoke-direct {v8}, Lcom/hangame/hsp/sns/HSPFacebookProfile;-><init>()V

    iput-object v0, v8, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mFacebookId:Ljava/lang/String;

    iput-object v1, v8, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mMemberNo:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v8, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mIsMyFriend:Z

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    const-string v1, "MASHUP"

    iget-object v2, v5, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    const-string v1, "MASHUP"

    iget-object v2, v5, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$9$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$9;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$9;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookQueryHSPMemberNosCB;->onHSPMemberNosReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
