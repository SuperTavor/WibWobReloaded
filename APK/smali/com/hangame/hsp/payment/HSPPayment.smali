.class public Lcom/hangame/hsp/payment/HSPPayment;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPPayment"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closePaymentService()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->closePaymentService()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPurchaseInfo()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CHU_KONG:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isReceivedRedeemBroadcast()Z
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->isReceivedRedeemBroadcast()Z

    move-result v0

    goto :goto_0
.end method

.method public static purchase(Landroid/app/Activity;Ljava/lang/String;JLcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 8

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;JLcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static purchase(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static redeem(Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CHU_KONG:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/HSPPayment$2;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/payment/HSPPayment$2;-><init>(Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static redeem(Landroid/app/Activity;Ljava/util/List;Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    const-string v3, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "HSPPayment"

    const-string v1, "redeem(activity)"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/payment/core/PaymentService;->redeem(Landroid/app/Activity;Ljava/util/List;Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "HSPPayment"

    const-string v2, "redeem return false"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "HSPPayment"

    const-string v2, "redeem return false."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static requestGoogleIabProductInfos(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getSkuDetailsAsync(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V

    goto :goto_0
.end method

.method public static requestGoogleSubscriptInfos(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GooglePurchaseCB;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getSubscriptPurchases(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GooglePurchaseCB;)V

    goto :goto_0
.end method

.method public static requestProductInfos(Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;)V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/payment/HSPPayment$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/HSPPayment$1;-><init>(Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;->storeId:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqPaymentProductInfo;->language:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static uninitialize()V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->CHU_KONG:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported service store ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
