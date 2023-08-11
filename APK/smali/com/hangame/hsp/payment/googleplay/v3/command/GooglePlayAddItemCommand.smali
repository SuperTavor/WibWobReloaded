.class public Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field private final mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GooglePlayAddItemCommand"

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v8

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getPaymentHeader(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "AddItem fail. PaymentHeader parsing is failed."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81002

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v8}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    move-object v1, v8

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v2, v3, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->googlePlayAddItem(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mGooglePlayPurchase:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;->mPurchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v4

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v2, "GooglePlayAddItemCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GooglePlayAddItemCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GooglePlayAddItemCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v9}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    move-object v1, v9

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddItem fail. status : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
