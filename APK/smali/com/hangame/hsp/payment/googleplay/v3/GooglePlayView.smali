.class public Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "GooglePlayView"


# instance fields
.field private mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

.field private mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field private mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

.field private mIabPurchaseFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

.field private mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$3;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabPurchaseFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    const-string v0, "hsp_payment_translucent"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->setView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->verifyDeveloperPayload(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->launchPurchaseFlow()V

    return-void
.end method

.method static synthetic access$500(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-object v0
.end method

.method public static closeGooglePlayView()V
    .locals 3

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

    const-string v1, "GooglePlayView"

    const-string v2, "onPurchaseStateChange error"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchPurchaseFlow()V
    .locals 10

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v8

    new-instance v9, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v9, v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;

    invoke-direct {v0, p0, v9}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {v8}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeDeveloperPayloadMapForGoogle(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GooglePlayView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "developerPayload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayView"

    const-string v1, "launchSubscriptionPurchaseFlow() start"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabPurchaseFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GooglePlayView"

    const-string v1, "launchPurchaseFlow() start"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabPurchaseFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v0 .. v5}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "Fail to start google play view."

    invoke-virtual {v9, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v9}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v0, "hsp.payment.err.msg.exception"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private verifyDeveloperPayload(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyDeveloperPayload payload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/ContentViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GooglePlayView"

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClose()V
    .locals 9

    const v4, 0x80008

    const/4 v7, 0x0

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

    const-string v1, "Google play User Canceled."

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

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->finishPurchase()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    :goto_0
    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onClose()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GooglePlayView"

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

    const-string v1, "Google play User Canceled."

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

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->finishPurchase()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

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

    const-string v1, "Google play User Canceled."

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

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->finishPurchase()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    throw v8
.end method

.method protected onCreate()V
    .locals 8

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onCreate()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    const-string v0, "GooglePlayView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "product ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getIabHelper()Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventoryAsync(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, "GooglePlayView exception"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "GooglePlayView"

    const-string v1, "onPause Called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->cancelTimer()V

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    :try_start_0
    const-string v0, "GooglePlayView"

    const-string v1, "onResume called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GooglePlayView"

    const-string v2, "onResume exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
