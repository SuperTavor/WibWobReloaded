.class public Lcom/hangame/hsp/payment/HSPPaymentItemInfo;
.super Ljava/lang/Object;


# instance fields
.field protected mItemDescription:Ljava/lang/String;

.field protected mItemID:Ljava/lang/String;

.field protected mItemInfomation:Ljava/lang/String;

.field protected mItemName:Ljava/lang/String;

.field protected mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

.field protected mItemQuantity:I

.field protected mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemID:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemName:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    iput-object p4, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    iput-object p5, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemDescription:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemInfomation:Ljava/lang/String;

    iput p7, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemQuantity:I

    return-void
.end method


# virtual methods
.method public getItemDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemID:Ljava/lang/String;

    return-object v0
.end method

.method public getItemInfomation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemInfomation:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemProvideType()Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    return-object v0
.end method

.method public getItemQuantity()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemQuantity:I

    return v0
.end method

.method public getItemUseType()Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPPaymentItemInfo [ItemID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemProvideType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemUseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemInfomation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemInfomation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ItemQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
