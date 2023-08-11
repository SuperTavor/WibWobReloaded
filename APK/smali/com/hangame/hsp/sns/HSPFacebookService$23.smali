.class Lcom/hangame/hsp/sns/HSPFacebookService$23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

.field final synthetic val$fbIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->val$fbIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->isUseFacebookGameApp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByGameIdpIdList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByGameIdpIdList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByGameIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByGameIdpIdList;->memberNoMap:Ljava/util/HashMap;

    :goto_0
    iget v2, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/hangame/hsp/sns/HSPFacebookService$23$1;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/sns/HSPFacebookService$23$1;-><init>(Lcom/hangame/hsp/sns/HSPFacebookService$23;Ljava/util/Map;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelationList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelationList;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelationList;->memberNo:J

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByIdpIdList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByIdpIdList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByIdpIdList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetMemberNoListByIdpIdList;->memberNoMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    const-string v2, "MASHUP"

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$23;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookGetMyFriendListCB;->onFriendListReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
