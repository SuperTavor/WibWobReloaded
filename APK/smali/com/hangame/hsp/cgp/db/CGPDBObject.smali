.class public Lcom/hangame/hsp/cgp/db/CGPDBObject;
.super Ljava/lang/Object;


# instance fields
.field private memberNo:Ljava/lang/String;

.field private promoId:I

.field private regDate:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    iput p2, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    iput p2, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    iput-object p3, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->regDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    iput-object p2, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->memberNo:Ljava/lang/String;

    iput p3, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    iput-object p2, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->memberNo:Ljava/lang/String;

    iput p3, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    iput-object p4, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->regDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMemberNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->memberNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoId()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    return v0
.end method

.method public getRegDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->regDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    return v0
.end method

.method public setMemberNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->memberNo:Ljava/lang/String;

    return-void
.end method

.method public setPromoId(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->regDate:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CGPDBObject [promoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->promoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->memberNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/db/CGPDBObject;->regDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
