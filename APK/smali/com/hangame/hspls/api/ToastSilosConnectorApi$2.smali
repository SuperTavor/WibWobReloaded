.class Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

.field final synthetic val$transferKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hspls/api/ToastSilosConnectorApi;Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

    iput-object p2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    iput-object p3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$transferKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    const-string v0, "ToastSilosConnectorApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

    iget-object v1, v1, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v1, v1, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;->memberData:Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;

    iget-wide v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/ToastLoginAnsMemberData;->memberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->memberNo:J

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

    const-string v2, ">>> after::: "

    iget-object v3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->this$0:Lcom/hangame/hspls/api/ToastSilosConnectorApi;

    iget-object v3, v3, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->loginInfo:Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;

    iget-object v3, v3, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi;->printLoginInfo(Ljava/lang/String;Lcom/hangame/hsp/auth/login/LoginMemberInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    const-string v2, "MASHUP"

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsTransferAccount;->returnMessage:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$transferKey:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$2;->val$callback:Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;

    const-string v1, "MASHUP"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;->onTransferkeyResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;)V

    goto :goto_0
.end method
