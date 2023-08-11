.class final Lcom/hangame/hsp/HSPGameMail$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail$1;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$1;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;-><init>()V

    invoke-static {v4, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;->mailList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;

    new-instance v7, Lcom/hangame/hsp/HSPGameMail;

    invoke-direct {v7, v10}, Lcom/hangame/hsp/HSPGameMail;-><init>(Lcom/hangame/hsp/HSPGameMail$1;)V

    iget-wide v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->mailNo:J

    invoke-static {v7, v8, v9}, Lcom/hangame/hsp/HSPGameMail;->access$102(Lcom/hangame/hsp/HSPGameMail;J)J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->sender:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v8, v1, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v7, v8, v9}, Lcom/hangame/hsp/HSPGameMail;->access$202(Lcom/hangame/hsp/HSPGameMail;J)J

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->senderAdminGameNo:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$302(Lcom/hangame/hsp/HSPGameMail;Z)Z

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receiver:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v8, v1, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    invoke-static {v7, v8, v9}, Lcom/hangame/hsp/HSPGameMail;->access$402(Lcom/hangame/hsp/HSPGameMail;J)J

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receiverAdminGameNo:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$502(Lcom/hangame/hsp/HSPGameMail;Z)Z

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->contentType:I

    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$602(Lcom/hangame/hsp/HSPGameMail;I)I

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->content:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$702(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->sentTimestamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$802(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->receivedTimestamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/hangame/hsp/HSPGameMail;->access$902(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/Mail;->reserved:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/hangame/hsp/HSPGameMail;->access$1002(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$1;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    iget v1, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;->totalCount:I

    invoke-interface {v0, v5, v1, p2}, Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;->onGameMailsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$1;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    const-string v1, "MASHUP"

    iget-object v2, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v10, v3, v1}, Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;->onGameMailsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ERROR"

    const-string v1, "GAMEMAIL_LOAD_FAILED"

    iget-object v2, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReceivedGameMails4;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$1;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    invoke-interface {v0, v10, v3, p2}, Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;->onGameMailsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ERROR"

    const-string v1, "GAMEMAIL_LOAD_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
