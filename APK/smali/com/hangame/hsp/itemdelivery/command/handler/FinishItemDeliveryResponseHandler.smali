.class public Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FinishItemDeliveryResponseHandler"

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    return-void
.end method

.method private processConfirmItemsResponse(Lcom/hangame/hsp/HSPResult;[B)Lcom/hangame/hsp/HSPResult;
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL300_RESPONDED_FINISH_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsFinishItemDelivery;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsFinishItemDelivery;-><init>()V

    invoke-static {v0, p2}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsFinishItemDelivery;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse;->code:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    const-string v0, "HSPItemDelivery"

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v2, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    const-string v1, "HSPItemDelivery"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsFinishItemDelivery;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse;->code:I

    const-string v2, "Fail to deliver items."

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    const-string v0, "FinishItemDeliveryResponseHandler"

    const-string v1, "***********     FinishItemDeliveryResponseHandler onReceive    ************"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;->processConfirmItemsResponse(Lcom/hangame/hsp/HSPResult;[B)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, "FinishItemDeliveryResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FinishItemDeliveryResponseHandler"

    const-string v2, "FinishItemDeliveryResponseHandler onReceive exception occured."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
