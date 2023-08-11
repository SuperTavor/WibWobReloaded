.class Lcom/hangame/hsp/HSPGameMail$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPGameMail;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail$7;->this$0:Lcom/hangame/hsp/HSPGameMail;

    iput-object p2, p0, Lcom/hangame/hsp/HSPGameMail$7;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$7;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteGameMail2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteGameMail2;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteGameMail2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$7;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;->onGameMailRemove(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMail$7;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    const-string v2, "MASHUP"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteGameMail2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;->onGameMailRemove(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ERROR"

    const-string v2, "GAMEMAIL_REMOVE_FAILED"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDeleteGameMail2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$7;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;->onGameMailRemove(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->sendNeloBi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    const-string v1, "GAMEMAIL_REMOVE_FAILED"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
