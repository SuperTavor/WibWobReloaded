.class public Lcom/hangame/hsp/payment/core/command/PurchaseCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;

.field private final mParamMap:Ljava/lang/String;

.field private final mProductId:Ljava/lang/String;

.field private final mReceiverMemberNo:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PurchaseCommend"

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mReceiverMemberNo:J

    iput-object p6, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mCallback:Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;

    iput-object p5, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mParamMap:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mCallback:Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->addCallback(Landroid/app/Activity;Lcom/hangame/hsp/payment/core/constant/ClientApiType;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isProcessingPurchase()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PurchaseCommend"

    const-string v1, "IN_PROCESS_PURCHASE"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v7}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v4, v5, v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectRetryTargetList(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PurchaseCommend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientStatusDataList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    iget-object v4, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mReceiverMemberNo:J

    iget-object v7, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mParamMap:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->makeAndInsertPaymentHeader(Landroid/content/Context;Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    const-string v5, "ERR_MSG_EXIST_IN_PROCESS_PURCHASE"

    invoke-virtual {v8, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-virtual {v8, v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81006

    const-string v0, "hsp.payment.err.msg.exist.purchase"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->resetState()V

    invoke-static {v9}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setPaymentActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    iget-object v4, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mReceiverMemberNo:J

    iget-object v7, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mParamMap:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->makeAndInsertPaymentHeader(Landroid/content/Context;Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    invoke-static {v1, v0, v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->checkStatusAvailable(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PurchaseCommend"

    const-string v1, "Fail to set initialization."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    invoke-static {v1, v0, v9}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->checkLoginSession(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PurchaseCommend"

    const-string v1, "Wrong login state"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getPaymentConfiguration()Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PurchaseCommend"

    const-string v2, "Store in maintenance"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Store is out of service"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x80016

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->getUnavailableServiceInfo()Ljava/lang/String;

    move-result-object v6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "INFO"

    const-string v3, "HSP_STAIND_PURCHASE_START"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    const-string v1, "PurchaseCommend"

    const-string v2, "Fail to set initialization of storeAction"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Not supported store."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81002

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.unsupported.device"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPLoginService;->disableSuspend()V

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/StoreAction;->purchase(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v1, "Fail to start payment."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;->mProductId:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
