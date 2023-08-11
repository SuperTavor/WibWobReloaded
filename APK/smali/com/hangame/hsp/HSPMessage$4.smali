.class final Lcom/hangame/hsp/HSPMessage$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$4;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$4;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;-><init>()V

    invoke-static {v3, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    new-instance v4, Lcom/hangame/hsp/HSPMessage;

    invoke-direct {v4, v5}, Lcom/hangame/hsp/HSPMessage;-><init>(Lcom/hangame/hsp/HSPMessage$1;)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->messageNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPMessage;->access$102(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->sender:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPMessage;->access$202(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->receiver:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPMessage;->access$302(Lcom/hangame/hsp/HSPMessage;J)J

    sget-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPMessage;->access$402(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->messageContent:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPMessage;->access$502(Lcom/hangame/hsp/HSPMessage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPMessage;->access$602(Lcom/hangame/hsp/HSPMessage;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->senderAdminGameNo:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPMessage;->access$702(Lcom/hangame/hsp/HSPMessage;Z)Z

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->msg:Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->receiverAdminGameNo:I

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v4, v1}, Lcom/hangame/hsp/HSPMessage;->access$802(Lcom/hangame/hsp/HSPMessage;Z)Z

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$4;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1000()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$4;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;

    const-string v1, "MASHUP"

    iget-object v2, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$4;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;

    invoke-interface {v0, v5, p2}, Lcom/hangame/hsp/HSPMessage$HSPSendTextMessageCB;->onMessageSend(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
