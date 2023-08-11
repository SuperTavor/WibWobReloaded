.class public Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mReceipt:Ljava/lang/String;

.field private mTxid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TStoreAddItemTask"

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mReceipt:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v10

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v10}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v4

    const-string v1, ""

    const-string v1, ""

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "signature"

    iget-object v7, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mReceipt:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "receipt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MSIShgJS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/util/SecurityUtil;->makeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "TStoreAddItemTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v1, v3, v4, v5}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TStoreAddItemTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeAddInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    invoke-static {v10, v1, v2}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v6

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v1, "TStoreAddItemTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TStoreAddItemTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TStoreAddItemTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x81005

    if-ne v6, v1, :cond_0

    const-string v1, "TStoreAddItemTask"

    const-string v2, "requestAddItem responseMap : null"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    const-string v1, "Server has responded incorrectly"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81000

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.network.timeout"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    :goto_0
    return-void

    :cond_0
    if-nez v6, :cond_1

    const-string v1, "TStoreAddItemTask"

    const-string v2, "storegateway AddItem success"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    const-string v5, "subtract_points"

    const-string v7, "change_product_properties"

    invoke-virtual {v1, v2, v3, v5, v7}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "TStoreAddItemTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getPlugin()Lcom/skplanet/dodo/IapPlugin;

    move-result-object v8

    new-instance v1, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;

    move-object v2, p0

    move-object v3, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;-><init>(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;Lcom/hangame/hsp/payment/core/model/PaymentHeader;I)V

    invoke-virtual {v8, v7, v1}, Lcom/skplanet/dodo/IapPlugin;->sendCommandRequest(Ljava/lang/String;Lcom/skplanet/dodo/IapPlugin$RequestCallback;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "TStoreAddItemTask exception"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v1, "TStoreAddItemTask"

    const-string v3, "storegateway AddItem fail"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mTxid:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->mAppId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReserved()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v5, v7}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddItem fail. status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const-string v1, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
