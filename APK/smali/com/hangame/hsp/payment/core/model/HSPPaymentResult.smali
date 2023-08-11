.class public Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
.super Ljava/lang/Object;


# instance fields
.field private code:I

.field private jsonInfos:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private paymentStatus:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field public productInfoList:Ljava/util/Vector;

.field private returnUrl:Ljava/lang/String;

.field private txId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productInfoList:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productInfoList:Ljava/util/Vector;

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->code:I

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->paymentStatus:Ljava/lang/String;

    iput-wide p3, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->txId:J

    iput-object p5, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productId:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->message:Ljava/lang/String;

    iput-object p7, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    iput-object p8, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->returnUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productInfoList:Ljava/util/Vector;

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->code:I

    return v0
.end method

.method public getJsonInfos(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getJsonInfos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->paymentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfoList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productInfoList:Ljava/util/Vector;

    return-object v0
.end method

.method public getReturnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTxId()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->txId:J

    return-wide v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->code:I

    return-void
.end method

.method public setJsonInfos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setPaymentStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->paymentStatus:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductInfoList(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productInfoList:Ljava/util/Vector;

    return-void
.end method

.method public setReturnUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->returnUrl:Ljava/lang/String;

    return-void
.end method

.method public setTxId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->txId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentResult [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paymentSatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->paymentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->txId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->jsonInfos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", returnUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->returnUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
