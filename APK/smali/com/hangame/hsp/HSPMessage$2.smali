.class final Lcom/hangame/hsp/HSPMessage$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$2;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$2;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetNewMsg;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetNewMsg;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetNewMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$2;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetNewMsg;->msgCount:I

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;->onNewMessageCountReceive(ILcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$2;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetNewMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;->onNewMessageCountReceive(ILcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$2;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewMessageCountCB;->onNewMessageCountReceive(ILcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
