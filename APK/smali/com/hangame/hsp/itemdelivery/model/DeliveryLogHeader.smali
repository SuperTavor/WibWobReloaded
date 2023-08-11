.class public Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;
.super Ljava/lang/Object;


# instance fields
.field public code:I

.field public currentTime:J

.field public eventNo:I

.field public gameNo:I

.field public memberNo:J

.field public requestTime:J

.field public requester:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public txId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->code:I

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->currentTime:J

    return-wide v0
.end method

.method public getEventNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->eventNo:I

    return v0
.end method

.method public getGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->gameNo:I

    return v0
.end method

.method public getMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->memberNo:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requestTime:J

    return-wide v0
.end method

.method public getRequester()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requester:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTxId()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->txId:J

    return-wide v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->code:I

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->currentTime:J

    return-void
.end method

.method public setEventNo(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->eventNo:I

    return-void
.end method

.method public setGameNo(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->gameNo:I

    return-void
.end method

.method public setMemberNo(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->memberNo:J

    return-void
.end method

.method public setRequestTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requestTime:J

    return-void
.end method

.method public setRequester(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requester:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->status:Ljava/lang/String;

    return-void
.end method

.method public setTxId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->txId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeliveryLogHeader [eventNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->eventNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requester="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requester:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->txId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", memberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->memberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->gameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requestTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->currentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
