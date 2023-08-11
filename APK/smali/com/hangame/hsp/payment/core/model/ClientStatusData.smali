.class public Lcom/hangame/hsp/payment/core/model/ClientStatusData;
.super Ljava/lang/Object;


# instance fields
.field private data:Ljava/lang/String;

.field private detailMessage:Ljava/lang/String;

.field private header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field private receipt:Ljava/lang/String;

.field private requestId:J

.field private reserved:Ljava/lang/String;

.field private retry:I

.field private targetRtry:Z


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->targetRtry:Z

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->targetRtry:Z

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->detailMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->data:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->receipt:Ljava/lang/String;

    iput p5, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->retry:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->receipt:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->requestId:J

    return-wide v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->retry:I

    return v0
.end method

.method public isTargetRtry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->targetRtry:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->data:Ljava/lang/String;

    return-void
.end method

.method public setDetailMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->detailMessage:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public setReceipt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->receipt:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->requestId:J

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->retry:I

    return-void
.end method

.method public setTargetRtry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->targetRtry:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientStatusData [header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->header:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->retry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->receipt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetRtry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->targetRtry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
