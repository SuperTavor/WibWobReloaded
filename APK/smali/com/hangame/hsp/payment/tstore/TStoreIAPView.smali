.class public Lcom/hangame/hsp/payment/tstore/TStoreIAPView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "TStoreIAPView"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mProductId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mProductName:Ljava/lang/String;

    const-string v0, "hsp_payment_translucent"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->setView(Landroid/view/View;)V

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mAppId:Ljava/lang/String;

    const-string v0, "product_name"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mProductName:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mProductId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/tstore/TStoreIAPView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static closeTStoreIAPView()V
    .locals 3

    const-string v0, "TStoreIAPView"

    const-string v1, "closeTStoreIAPView Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setShowingProgressDialog(Z)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TStoreIAPView"

    const-string v2, "onPurchaseStateChange error"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClose()V
    .locals 9

    const v4, 0x80008

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onClose()V

    const-string v0, "TStoreIAPView"

    const-string v1, "onClose Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setShowingProgressDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "TStore User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TStoreIAPView"

    const-string v3, "onDestroy Fail."

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "TStore User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "TStore User Canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    throw v8
.end method

.method protected onCreate()V
    .locals 9

    const/4 v7, 0x0

    const v4, 0x81003

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onCreate()V

    const-string v0, "TStoreIAPView"

    const-string v1, "onCreate called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->mProductId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->makeParamString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getPlugin()Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skplanet/dodo/IapPlugin;->exit()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->setPlugin(Landroid/app/Activity;)V

    const-string v0, "TStoreIAPView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TStorePurchase sendPaymentRequest called. parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getPlugin()Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/payment/tstore/TStoreIAPView$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView$1;-><init>(Lcom/hangame/hsp/payment/tstore/TStoreIAPView;)V

    invoke-virtual {v0, v1, v2}, Lcom/skplanet/dodo/IapPlugin;->sendPaymentRequest(Ljava/lang/String;Lcom/skplanet/dodo/IapPlugin$RequestCallback;)Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, "TStore req is null!!"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    :cond_0
    const-string v0, "req.id"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, "TStore requestId is empty!!"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onPause()V

    const-string v0, "TStoreIAPView"

    const-string v1, "onPause Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->cancelTimer()V

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    const-string v0, "TStoreIAPView"

    const-string v1, "onResume called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TStoreIAPView"

    const-string v2, "onResume exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
