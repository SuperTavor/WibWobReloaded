.class final Lcom/hangame/hsp/HSPMessage$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

.field final synthetic val$memberNo:J

.field final synthetic val$resSendImageMessageHandler:Lcom/hangame/hsp/core/HSPResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;JLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    iput-wide p2, p0, Lcom/hangame/hsp/HSPMessage$6;->val$memberNo:J

    iput-object p4, p0, Lcom/hangame/hsp/HSPMessage$6;->val$resSendImageMessageHandler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 6

    const v5, 0xf000

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_2

    :try_start_0
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    check-cast p4, Ljava/lang/String;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "downUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->senderMemberNo:J

    iget-wide v2, p0, Lcom/hangame/hsp/HSPMessage$6;->val$memberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->receiverMemberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-static {v2}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->access$1100(Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)B

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->messageContentType:I

    iput-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendMsg;->messageContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$resSendImageMessageHandler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    const/4 v1, 0x0

    const-string v2, "PHOTOSERVICE"

    const v3, 0xf000

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    const-string v1, "PHOTOSERVICE"

    const/16 v2, 0x1007

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    const-string v1, "PHOTOSERVICE"

    invoke-static {v1, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    const-string v1, "PHOTOSERVICE"

    invoke-static {v1, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$6;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPMessage$HSPSendImageMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
