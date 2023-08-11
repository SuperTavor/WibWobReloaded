.class public Lcom/hangame/hsp/payment/core/PaymentService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentService"

.field private static instance:Lcom/hangame/hsp/payment/core/PaymentService;

.field private static isCheckedXml:Z

.field private static isInitialized:Z

.field private static mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

.field private static storeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    sput-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized:Z

    sput-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isCheckedXml:Z

    sput-object v1, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Payment Initializer has not been called. Please check the HSP Core Initializer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setStoreId(Ljava/lang/String;)V

    const-string v1, "PaymentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store ID set : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/StoreActionFactory;->getStoreAction(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized:Z

    return p0
.end method

.method public static getInstance()Lcom/hangame/hsp/payment/core/PaymentService;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/PaymentService;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/core/PaymentService;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "PaymentService"

    const-string v1, "Payment initialize started."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    const-string v1, "HSP_PAYMENT_STORE_ID"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "PaymentService"

    const-string v1, "Payment initializing fail because the store ID is empty. Default Store set(GG)"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setStoreId(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    const-string v1, "HSP_PAYMENT_GAMBLING"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setGambling(Z)V

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    const-string v1, "HSP_PAYMENT_USE_CONFIRM_POPUP"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setUseConfirmPopup(Z)V

    :goto_1
    const-string v0, "nspcsp"

    const-string v1, "billClose"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "nspcsp"

    const-string v1, "billCancel"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionCheckIDPPwd"

    new-instance v2, Lcom/hangame/hsp/ui/view/payment/handler/CheckIdPwdHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/ui/view/payment/handler/CheckIdPwdHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    sget-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isCheckedXml:Z

    if-nez v0, :cond_4

    const-string v0, "PaymentService"

    const-string v1, "PaymentAndroidManifestValidator Check"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hangame/hsp/payment/core/util/PaymentAndroidManifestValidator;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PaymentService"

    const-string v1, "Fail to check PaymentAndroidManifestValidator.\nPlease check the AndroidManifest.xml file again."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fail to check PaymentAndroidManifestValidator."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setGambling(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->setUseConfirmPopup(Z)V

    goto :goto_1

    :cond_3
    sput-boolean v3, Lcom/hangame/hsp/payment/core/PaymentService;->isCheckedXml:Z

    :cond_4
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->RAKUTEN:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->storeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/StoreActionFactory;->getStoreAction(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    const-string v0, "PaymentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoreaction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/core/PaymentService$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/payment/core/PaymentService$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->addAfterLoginListener(Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;)V

    const-string v0, "PaymentService"

    const-string v1, "Payment initialize ended."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized:Z

    return v0
.end method

.method public static unregisterPaymentService()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->releaseInstance()V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->releaseInstance()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public closePaymentService()Z
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/payment/core/PaymentService;->isInitialized:Z

    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/StoreAction;->closePaymentService()Z

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->instance:Lcom/hangame/hsp/payment/core/PaymentService;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/PaymentService;->mStoreAction:Lcom/hangame/hsp/payment/core/StoreAction;

    return-object v0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;JLcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 9

    const-string v0, "PaymentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start purchase for present. productId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    return v0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 9

    const-string v0, "PaymentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start purchase for present. productId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/command/PurchaseCommand;-><init>(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 8

    const-wide/16 v4, 0x0

    const-string v6, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    return v0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z
    .locals 8

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/hangame/hsp/payment/core/PaymentService;->purchase(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    move-result v0

    return v0
.end method

.method public redeem(Landroid/app/Activity;Ljava/util/List;Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)Z
    .locals 3

    const-string v0, "PaymentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start redeem. promoProductIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/payment/core/command/RedeemCommand;

    invoke-direct {v0, p1, p2, p3}, Lcom/hangame/hsp/payment/core/command/RedeemCommand;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
