.class final Lcom/hangame/hsp/HSPGameMail$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail$5;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$5;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;-><init>()V

    invoke-static {v3, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    new-instance v4, Lcom/hangame/hsp/HSPGameMail;

    invoke-direct {v4, v5}, Lcom/hangame/hsp/HSPGameMail;-><init>(Lcom/hangame/hsp/HSPGameMail$1;)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->mailNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPGameMail;->access$102(Lcom/hangame/hsp/HSPGameMail;J)J

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->sender:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPGameMail;->access$202(Lcom/hangame/hsp/HSPGameMail;J)J

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->senderAdminGameNo:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$302(Lcom/hangame/hsp/HSPGameMail;Z)Z

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receiver:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v4, v6, v7}, Lcom/hangame/hsp/HSPGameMail;->access$402(Lcom/hangame/hsp/HSPGameMail;J)J

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receiverAdminGameNo:I

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v4, v1}, Lcom/hangame/hsp/HSPGameMail;->access$502(Lcom/hangame/hsp/HSPGameMail;Z)Z

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->contentType:I

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$602(Lcom/hangame/hsp/HSPGameMail;I)I

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->content:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$702(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->sentTimestamp:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$802(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receivedTimestamp:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$902(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->mail:Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->reserved:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/hangame/hsp/HSPGameMail;->access$1002(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$5;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;->onGameMailSend(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPResult;)V

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
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$5;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;

    const-string v1, "MASHUP"

    iget-object v2, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;->onGameMailSend(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "GAMEMAIL_SEND_FAILED"

    iget-object v2, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendGameMail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$5;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;

    invoke-interface {v0, v5, p2}, Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;->onGameMailSend(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "GAMEMAIL_SEND_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
