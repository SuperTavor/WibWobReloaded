.class public Lcom/hangame/hsp/itemdelivery/HSPItemInfo;
.super Ljava/lang/Object;


# instance fields
.field private itemId:Ljava/lang/String;

.field private itemSequence:J

.field private quantity:I

.field private sentMemberNo:J

.field private storeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemSequence:J

    iput p4, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->quantity:I

    iput-object p5, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->storeId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->sentMemberNo:J

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSequence()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemSequence:J

    return-wide v0
.end method

.method public getQuantity()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->quantity:I

    return v0
.end method

.method public getSentMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->sentMemberNo:J

    return-wide v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemSequence(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemSequence:J

    return-void
.end method

.method public setQuantity(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->quantity:I

    return-void
.end method

.method public setSentMemberNo(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->sentMemberNo:J

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->storeId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemInfo [itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->itemSequence:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->quantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->storeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sentMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/HSPItemInfo;->sentMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
