.class public Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field private final mPromoProductIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GooglePlayRedeemPrepareCommand"

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mPromoProductIds:Ljava/util/List;

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v9, 0x81005

    const v11, 0x81003

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v10

    new-instance v2, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v2, v10}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    :try_start_0
    iget-object v5, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getIabHelper()Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v6

    const-string v5, "GooglePlayRedeemPrepareCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "purchaseList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    const-string v3, "GooglePlayRedeemPrepareCommand"

    const-string v4, "Google promo purchase is Null."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Google promo purchase is Null"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v6, 0x81005

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteClientStatus(Landroid/content/Context;JLjava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v5, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    move-object v4, v0

    const-string v3, "GooglePlayRedeemPrepareCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Purchase : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mPromoProductIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setProductId(Ljava/lang/String;)V

    const-string v3, "GooglePlayRedeemPrepareCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paymentHeader.setProductId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "purchaseType"

    const-string v6, "redeem"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "GooglePlayRedeemPrepareCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marketGateAddInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v3}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestPrepare(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    if-ne v3, v9, :cond_5

    const-string v3, "Server has responded incorrectly"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v6, 0x81000

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v3, "GooglePlayRedeemPrepareCommand exception"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v6, v11

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getTxId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    const-string v3, "prepareResponse txId is zero."

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v6, 0x80001

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hsp.payment.err.msg.exception"

    invoke-static {v8}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v10, v6, v7}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setTxId(J)V

    const-string v3, "GooglePlayRedeemPrepareCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare success txId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v10}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v3, "Prepare success"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v6, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v3, v2, v5, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v10}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeDeveloperPayloadMapForGoogle(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Ljava/util/Map;

    move-result-object v3

    new-instance v5, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-direct {v5, v4, v3}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Ljava/util/Map;)V

    invoke-static {v5}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :try_start_3
    const-string v3, "Cannot start addItem"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v6, 0x81003

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v8}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
