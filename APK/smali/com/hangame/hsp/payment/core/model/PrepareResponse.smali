.class public Lcom/hangame/hsp/payment/core/model/PrepareResponse;
.super Ljava/lang/Object;


# instance fields
.field private paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field private resultData:Lcom/hangame/hsp/payment/core/model/ResultData;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ResultData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-void
.end method

.method public static getPrepareResponse(Ljava/util/Map;)Lcom/hangame/hsp/payment/core/model/PrepareResponse;
    .locals 25

    const-string v4, "header"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "data"

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "txId"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "requestTime"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "currentTime"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v12, "memberNo"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string v14, "gameNo"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->intValue()I

    move-result v14

    const-string v15, "productId"

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "storeId"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v18, "code"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->intValue()I

    move-result v18

    const-string v19, "requester"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v4, "message"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v20, "<br />"

    const-string v21, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v22, ""

    const-string v21, ""

    const-string v20, "0"

    new-instance v24, Ljava/text/DecimalFormat;

    const-string v4, "#,###"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "appId"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    move-object/from16 v22, v4

    :goto_0
    :try_start_1
    const-string v4, "productName"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object/from16 v21, v4

    :goto_1
    :try_start_2
    const-string v4, "price"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    :goto_2
    new-instance v5, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    const-string v20, ""

    invoke-direct/range {v5 .. v20}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>(JJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/hangame/hsp/payment/core/model/ResultData;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/hangame/hsp/payment/core/model/ResultData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/hangame/hsp/payment/core/model/PrepareResponse;

    invoke-direct {v4, v5, v6}, Lcom/hangame/hsp/payment/core/model/PrepareResponse;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ResultData;)V

    return-object v4

    :catch_0
    move-exception v4

    move-object/from16 v4, v20

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-object v0
.end method

.method public getResultData()Lcom/hangame/hsp/payment/core/model/ResultData;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-object v0
.end method

.method public setPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public setResultData(Lcom/hangame/hsp/payment/core/model/ResultData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareResponse [paymentHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PrepareResponse;->resultData:Lcom/hangame/hsp/payment/core/model/ResultData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
