.class public Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

.field private final mItemInfoList:Ljava/util/List;

.field private final mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

.field private mReceipt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RequestItemDeliveryResponseHandler"

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mItemInfoList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mReceipt:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    iput-object p2, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    return-void
.end method

.method private processRequestItemDeliveryResponse(Lcom/hangame/hsp/HSPResult;Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;)Lcom/hangame/hsp/HSPResult;
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v3, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL200_RESPONDED_REQUEST_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setStatus(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v3, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    :goto_0
    return-object p1

    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v3, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    const-string v2, "HSPItemDelivery"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const-string v4, "MRS exception occured."

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->code:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v3, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->itemIds:Ljava/util/Vector;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->itemDeliverySequences:Ljava/util/Vector;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->itemQuantities:Ljava/util/Vector;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->itemGiveInfos:Ljava/util/Vector;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, "storeId"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    const-string v4, "sentMemberNo"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-object v7, v2

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mItemInfoList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v2 .. v9}, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;-><init>(Ljava/lang/String;JILjava/lang/String;J)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mLogHeader:Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    sget-object v3, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    const-string v2, "HSPItemDelivery"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->code:I

    const-string v4, "Fail to deliver items."

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RequestItemDeliveryResponseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get SentMemberNo error!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->deliveryResponse:Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/DeliveryResponse2;->deliveryReceipt:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mReceipt:Ljava/lang/String;

    const-string v2, "HSPItemDelivery"

    const/4 v3, 0x0

    const-string v4, "Need to apply items."

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v2, "HSPItemDelivery"

    const/4 v3, 0x0

    const-string v4, "Not exists any undelivered items."

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    const-string v0, "RequestItemDeliveryResponseHandler"

    const-string v1, "***********     RequestItemDeliveryResponseHandler onReceive    ************"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;-><init>()V

    invoke-static {v2, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    invoke-direct {p0, p2, v2}, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->processRequestItemDeliveryResponse(Lcom/hangame/hsp/HSPResult;Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const-string v0, "RequestItemDeliveryResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HSP Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RequestItemDeliveryResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item Info List : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mItemInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RequestItemDeliveryResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receipt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mReceipt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    iget-object v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget-wide v2, v2, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->transactionId:J

    iget-object v4, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mItemInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mReceipt:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;->onRequestItemDelivery(Lcom/hangame/hsp/HSPResult;JLjava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RequestItemDeliveryResponseHandler onReceive exception occured."

    const-string v2, "RequestItemDeliveryResponseHandler"

    invoke-static {v2, v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "HSPItemDelivery"

    const/16 v2, 0x1001

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mItemInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;->mReceipt:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;->onRequestItemDelivery(Lcom/hangame/hsp/HSPResult;JLjava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
