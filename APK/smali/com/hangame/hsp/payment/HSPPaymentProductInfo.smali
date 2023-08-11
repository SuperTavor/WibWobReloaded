.class public Lcom/hangame/hsp/payment/HSPPaymentProductInfo;
.super Ljava/lang/Object;


# instance fields
.field protected mCurrency:Ljava/lang/String;

.field protected mItemInfos:Ljava/util/ArrayList;

.field protected mPoductInformation:Ljava/lang/String;

.field protected mPrice:D

.field protected mProductDescription:Ljava/lang/String;

.field protected mProductID:Ljava/lang/String;

.field protected mProductName:Ljava/lang/String;

.field protected mValidEndDate:Ljava/util/Date;

.field protected mValidStartDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Date;Ljava/util/Date;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductID:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductName:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPoductInformation:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mCurrency:Ljava/lang/String;

    iput-wide p6, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPrice:D

    iput-object p8, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidStartDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidEndDate:Ljava/util/Date;

    iput-object p10, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mItemInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getItemInfos()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mItemInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPoductInformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPoductInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPrice:D

    return-wide v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getValidStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPPaymentProductInfo [ProductID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProductDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PoductInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPoductInformation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ValidStartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidStartDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ValidEndDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
