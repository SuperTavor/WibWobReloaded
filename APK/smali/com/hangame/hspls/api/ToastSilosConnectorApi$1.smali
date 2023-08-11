.class Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;


# direct methods
.method constructor <init>(Lcom/hangame/hspls/api/ToastSilosConnectorApi;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

    iput-object p2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetTransferKey;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetTransferKey;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    const-string v2, "MASHUP"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetTransferKey;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetTransferKey;->transferKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$1;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    const-string v1, "MASHUP"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    goto :goto_0
.end method
