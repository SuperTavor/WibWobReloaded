.class public Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;
.super Ljava/lang/Object;


# instance fields
.field private paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field private resultData:Lcom/hangame/hsp/payment/core/model/ResultData;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ResultData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-void
.end method

.method public static getStoreGatewayResponse(Ljava/util/Map;)Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;
    .locals 19

    const-string v2, "header"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "data"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "txId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "requestTime"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "currentTime"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "memberNo"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v12, "gameNo"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v12

    const-string v13, "productId"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "storeId"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "status"

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->intValue()I

    move-result v16

    const-string v17, "requester"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "<br />"

    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v18, ""

    invoke-direct/range {v3 .. v18}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(JJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/hangame/hsp/payment/core/model/ResultData;

    invoke-direct {v4, v2}, Lcom/hangame/hsp/payment/core/model/ResultData;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;

    invoke-direct {v2, v3, v4}, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ResultData;)V

    return-object v2
.end method


# virtual methods
.method public getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-object v0
.end method

.method public getResultData()Lcom/hangame/hsp/payment/core/model/ResultData;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-object v0
.end method

.method public setPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public setResultData(Lcom/hangame/hsp/payment/core/model/ResultData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreGatewayResponse [paymentHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/StoreGatewayResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
