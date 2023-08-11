.class Lcom/hangame/hsp/HSPCore$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPCore;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$2;->this$0:Lcom/hangame/hsp/HSPCore;

    iput-object p2, p0, Lcom/hangame/hsp/HSPCore$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetShortTermTicket;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetShortTermTicket;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;

    const-string v2, "LOGINSERVICE"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetShortTermTicket;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetShortTermTicket;->ticket:Ljava/lang/String;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetShortTermTicket;->reserved:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;->onReturnResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;

    const-string v1, "MASHUP"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPCore$HSPShortTermTicketCB;->onReturnResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
