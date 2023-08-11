.class final Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field final synthetic val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ServerRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPaymentProductByProductId success.: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductByProductId;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductByProductId;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductByProductId;->productInfoResult:Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;

    iget-object v4, v4, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;->productInfoList:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setProductInfoList(Ljava/util/Vector;)V

    const-string v3, "ServerRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productInfoList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductByProductId;->productInfoResult:Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;->productInfoList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductByProductId;->productInfoResult:Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;->productInfoList:Ljava/util/Vector;

    if-eqz v3, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productInformation:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setJsonInfos(Ljava/lang/String;)V

    const-string v4, "ServerRequestManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productInformation : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productInformation:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPaymentProductByProductId failed.: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setPaymentStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setTxId(J)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setProductId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    const-string v1, "hsp.payment.err.msg.network.timeout"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setMessage(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPaymentProductByProductId HSPPaymentResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;->val$paymentResult:Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    const-string v1, "hsp.payment.err.msg.exception"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
