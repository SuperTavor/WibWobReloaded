.class final Lcom/hangame/hsp/HSPMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$1;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$1;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedMsgs;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedMsgs;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedMsgs;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedMsgs;->msgList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;

    new-instance v6, Lcom/hangame/hsp/HSPMessage;

    invoke-direct {v6, v10}, Lcom/hangame/hsp/HSPMessage;-><init>(Lcom/hangame/hsp/HSPMessage$1;)V

    iget-wide v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->messageNo:J

    invoke-static {v6, v8, v9}, Lcom/hangame/hsp/HSPMessage;->access$102(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->sender:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v8, v1, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v6, v8, v9}, Lcom/hangame/hsp/HSPMessage;->access$202(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->receiver:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v8, v1, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v6, v8, v9}, Lcom/hangame/hsp/HSPMessage;->access$302(Lcom/hangame/hsp/HSPMessage;J)J

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->messageContentType:I

    sget-object v7, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-virtual {v7}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->getValue()B

    move-result v7

    if-ne v1, v7, :cond_0

    sget-object v1, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    :goto_1
    invoke-static {v6, v1}, Lcom/hangame/hsp/HSPMessage;->access$402(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->messageContent:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/hangame/hsp/HSPMessage;->access$502(Lcom/hangame/hsp/HSPMessage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/hangame/hsp/HSPMessage;->access$602(Lcom/hangame/hsp/HSPMessage;Ljava/util/Date;)Ljava/util/Date;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->senderAdminGameNo:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-static {v6, v1}, Lcom/hangame/hsp/HSPMessage;->access$702(Lcom/hangame/hsp/HSPMessage;Z)Z

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/MsgInfo;->receiverAdminGameNo:I

    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    invoke-static {v6, v0}, Lcom/hangame/hsp/HSPMessage;->access$802(Lcom/hangame/hsp/HSPMessage;Z)Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$1;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;->onMessagesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$1;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedMsgs;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;->onMessagesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$1;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;

    invoke-interface {v0, v10, p2}, Lcom/hangame/hsp/HSPMessage$HSPLoadMessagesCB;->onMessagesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_4
.end method
