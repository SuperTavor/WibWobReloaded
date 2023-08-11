.class final Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field final synthetic val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v2, :cond_0

    const-string v0, "ServerRequestManager"

    const-string v2, "writeLog is Succes"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    :goto_0
    const-string v0, "ServerRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSPPaymentResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :cond_0
    const-string v2, "ServerRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeLog is Failed :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget-object v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->reserved:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->reserved:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "ServerRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLog is Failed :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setPaymentStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setTxId(J)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setProductId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
