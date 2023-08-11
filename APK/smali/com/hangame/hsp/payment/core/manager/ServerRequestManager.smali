.class public Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerRequestManager"

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static checkTx(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 8

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTx(checkTx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoreGateway - Invalid Tx ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$4;

    invoke-direct {v0, v1, p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$4;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqCheckPaymentTx;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqCheckPaymentTx;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqCheckPaymentTx;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->makeCommonData(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqCheckPaymentTx;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    sget-object v3, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ServerRequestManager"

    const-string v4, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static makeCommonData(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;
    .locals 6

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getGameNo()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    :cond_1
    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->txId:J

    iput-wide v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->memberNo:J

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStoreId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->storeId:Ljava/lang/String;

    iput v2, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->gameNo:I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->productId:Ljava/lang/String;

    return-object v3
.end method

.method public static requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 10

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAddItem(paymentHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoreGateway - Invalid Tx ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v3, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$3;

    invoke-direct {v3, v2, p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$3;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;-><init>()V

    iget-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->makeCommonData(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iput-object p1, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;->data:Ljava/lang/String;

    iput-object p2, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;->receipt:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentAddItemByMashup;->deviceIp:Ljava/lang/String;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-gt v1, v0, :cond_3

    :try_start_0
    sget-object v5, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "ServerRequestManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentState():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hangame/hsp/core/HSPInternalState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v0

    const/16 v6, 0x1009

    if-eq v0, v6, :cond_1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v0

    const v6, 0xaf000

    if-lt v0, v6, :cond_2

    :cond_1
    const-string v0, "ServerRequestManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request Fail. try count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v0, v1, 0x7d0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    monitor-exit v5

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit v5

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v5, "ServerRequestManager"

    const-string v6, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v5, v6, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "ServerRequestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request Fail. try count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static requestPaymentProductByProductId(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 8

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPaymentProductByProductId(paymentHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;

    invoke-direct {v0, v1, p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$2;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getGameNo()I

    move-result v3

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->gameNo:I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStoreId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->storeId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->productId:Ljava/lang/String;

    const-string v3, "SPS0003806"

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->svcCode:Ljava/lang/String;

    const-string v3, "ServerRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gameNo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->gameNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". storeId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->storeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". productId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductByProductId;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ServerRequestManager"

    const-string v4, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static requestPrepare(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 8

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPrepare(paymentHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storeAddInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$1;

    invoke-direct {v0, v1, p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$1;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->makeCommonData(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReceiverMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->receiverMemberNo:J

    iput-object p1, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getRequestTime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->requestTime:J

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->marketCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getPhoneOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->operatorCode:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->gameClientVersion:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->deviceIp:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isGambling()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->isPurchaseLimit:Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->hangameId:Ljava/lang/String;

    :goto_0
    const-string v3, "ServerRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPurchaseLimit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->isPurchaseLimit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". hangameId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->hangameId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ServerRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->countryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->isPurchaseLimit:Z

    const-string v3, ""

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqPreparePayment;->hangameId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ServerRequestManager"

    const-string v4, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static requestRedemption(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 8

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRedemption(redemptionKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$6;

    invoke-direct {v0, v1, p1}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$6;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->txId:J

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->memberNo:J

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v4

    const-string v5, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->storeId:Ljava/lang/String;

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v4

    iput v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->gameNo:I

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iput-object p1, v3, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->productId:Ljava/lang/String;

    iput-object p0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->redemptionKey:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->deviceIp:Ljava/lang/String;

    const-string v3, "ServerRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "txId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iget-wide v6, v5, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->txId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", memberNo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iget-wide v6, v5, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->memberNo:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storeId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->storeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gameNo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iget v5, v5, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->gameNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->commonData:Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/request/PaymentReqCommonData;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", redemptionKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->redemptionKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviceIp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRedemption;->deviceIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ServerRequestManager"

    const-string v4, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 7

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ServerRequestManager"

    const-string v1, "BIEvent - paymentHeader is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ServerRequestManager"

    const-string v2, "processSendState Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    const-string v2, "ServerRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIEvent - before getting txId status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "ServerRequestManager"

    const-string v3, "BIEvent - Send data to the BI Event Server"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v2, "ServerRequestManager"

    const-string v3, "BIEvent - requestSendState response is null"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ServerRequestManager"

    const-string v3, "BIEvent - Fail to send data and update the status data\'s retry count"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v2, "ServerRequestManager"

    const-string v3, "BIEvent - Success to send data and delete the status data"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteClientStatus(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 6

    const-string v0, "ServerRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeLog(ClientStatusData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-string v1, "ServerRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIEvent - before getting txId status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->setCode(I)V

    new-instance v2, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;

    invoke-direct {v2, v1, v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager$5;-><init>(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;-><init>()V

    iget-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v4}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->paymentStatus:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v4

    iput v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->statusCode:I

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->txId:J

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getRequester()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->requester:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->deviceIp:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->logMessage:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getPhoneOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->logData:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentWriteLog;->receipt:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v4, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {v3, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "ServerRequestManager"

    const-string v3, "StoreGateway - Fail to get response from the StoreGateway server."

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
