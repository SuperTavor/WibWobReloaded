.class final Lcom/hangame/hsp/HSPMessage$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/serverpush/ServerPushMsgHSP13ResponseHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivePacket(Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/hangame/hsp/HSPMessage;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/hangame/hsp/HSPMessage;-><init>(Lcom/hangame/hsp/HSPMessage$1;)V

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->messageNo:J

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPMessage;->access$102(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->senderMemberNo:J

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPMessage;->access$202(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->receiverMemberNo:J

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPMessage;->access$302(Lcom/hangame/hsp/HSPMessage;J)J

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget v0, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->messageContentType:I

    sget-object v2, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->getValue()B

    move-result v2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    :goto_0
    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPMessage;->access$402(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->messageContent:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPMessage;->access$502(Lcom/hangame/hsp/HSPMessage;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushMsg;->info:Lcom/hangame/hsp/xdr/serverpush/MsgInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/serverpush/MsgInfo;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPMessage;->access$602(Lcom/hangame/hsp/HSPMessage;Ljava/util/Date;)Ljava/util/Date;

    invoke-static {v1, v4}, Lcom/hangame/hsp/HSPMessage;->access$702(Lcom/hangame/hsp/HSPMessage;Z)Z

    invoke-static {v1, v4}, Lcom/hangame/hsp/HSPMessage;->access$802(Lcom/hangame/hsp/HSPMessage;Z)Z

    new-instance v0, Lcom/hangame/hsp/HSPMessage$12$1;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/HSPMessage$12$1;-><init>(Lcom/hangame/hsp/HSPMessage$12;Lcom/hangame/hsp/HSPMessage;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    goto :goto_0
.end method
