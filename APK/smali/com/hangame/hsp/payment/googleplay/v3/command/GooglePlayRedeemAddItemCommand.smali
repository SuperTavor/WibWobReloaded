.class public Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

.field private mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field private final mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

.field private final mRedeemInfoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GooglePlayRedeemAddItemCommand"

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mRedeemInfoMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mConsumeFinishedListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mRedeemInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getRedeemHeader(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Ljava/util/Map;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getRedeemData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v1, v3}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getRedeemReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v3, v4, v2, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->googlePlayAddItem(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v1, "GooglePlayRedeemAddItemCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GooglePlayRedeemAddItemCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GooglePlayRedeemAddItemCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const-string v1, "GooglePlayRedeemAddItemCommand"

    const-string v3, "1) consumeAsync"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GooglePlayRedeemAddItemCommand"

    const-string v7, "2) consumeAsync exceiption has occurred : "

    invoke-static {v3, v7, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddItem fail. status : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", message : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
