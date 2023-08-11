.class public Lcom/hangame/hsp/payment/core/model/PaymentHeader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private apiType:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

.field private clientTxNo:J

.field private code:I

.field private currentTime:J

.field private eventNo:I

.field private gameNo:I

.field private memberNo:J

.field private paraMap:Ljava/lang/String;

.field private phoneOperator:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productType:Ljava/lang/String;

.field private receiverMemberNo:J

.field private requestTime:J

.field private requester:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private txId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    iput-wide p2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    iput-wide p4, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    iput-wide p6, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    iput-wide p8, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    iput p10, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    iput-object p11, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clientTxNo:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    iput-wide p2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    iput-wide p4, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    iput-wide p6, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    iput-wide p8, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    iput p10, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    iput-object p11, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clientTxNo:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    iput-wide p2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    iput-wide p4, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    iput-wide p6, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    iput-wide p8, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    iput p10, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    iput-object p11, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    iput-object p12, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    iput-object p13, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    iput-wide p3, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    iput-wide p5, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    iput-wide p7, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    iput p9, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    iput-object p10, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    iput-object p11, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    iput-object p12, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clone()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    return-object v0
.end method

.method public getApiType()Lcom/hangame/hsp/payment/core/constant/ClientApiType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->apiType:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    return-object v0
.end method

.method public getClientTxNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clientTxNo:J

    return-wide v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    return-wide v0
.end method

.method public getEventNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    return v0
.end method

.method public getGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    return v0
.end method

.method public getMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    return-wide v0
.end method

.method public getParaMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inapp"

    goto :goto_0
.end method

.method public getReceiverMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->receiverMemberNo:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    return-wide v0
.end method

.method public getRequester()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTxId()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    return-wide v0
.end method

.method public setApiType(Lcom/hangame/hsp/payment/core/constant/ClientApiType;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->apiType:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    return-void
.end method

.method public setClientTxNo(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clientTxNo:J

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    return-void
.end method

.method public setEventNo(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    return-void
.end method

.method public setGameNo(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    return-void
.end method

.method public setMemberNo(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    return-void
.end method

.method public setParaMap(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public setPhoneOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productType:Ljava/lang/String;

    return-void
.end method

.method public setReceiverMemberNo(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->receiverMemberNo:J

    return-void
.end method

.method public setRequestTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    return-void
.end method

.method public setRequester(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setTxId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentHeader [eventNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->eventNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->txId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requestTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->currentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", memberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->memberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", receiverMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->receiverMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->gameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requester="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->requester:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTxNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clientTxNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", apiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->apiType:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->phoneOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paraMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->paraMap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
