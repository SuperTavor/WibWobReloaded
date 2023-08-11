.class public Lcom/hangame/hsp/payment/core/model/CallbackObject;
.super Ljava/lang/Object;


# instance fields
.field private alertMessage:Ljava/lang/String;

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field private response:Ljava/lang/Object;

.field private showAlert:Z

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->response:Ljava/lang/Object;

    iput p3, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorCode:I

    iput-object p4, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->alertMessage:Ljava/lang/String;

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->showAlert:Z

    iput-object p6, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->throwable:Ljava/lang/Throwable;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAlertMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->alertMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isShowAlert()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->showAlert:Z

    return v0
.end method

.method public setAlertMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->alertMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->response:Ljava/lang/Object;

    return-void
.end method

.method public setShowAlert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->showAlert:Z

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallbackObject [paymentHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alertMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->alertMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/payment/core/model/CallbackObject;->showAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
