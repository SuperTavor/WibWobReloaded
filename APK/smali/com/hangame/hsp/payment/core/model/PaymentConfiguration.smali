.class public Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private isOutOfServiceStore:Z

.field private unavailableServiceInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUnavailableServiceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isOutOfServiceStore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    return v0
.end method

.method public setOutOfServiceStore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    return-void
.end method

.method public setUnavailableServiceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentConfiguration ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOutOfServiceStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->isOutOfServiceStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unavailableServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/PaymentConfiguration;->unavailableServiceInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
