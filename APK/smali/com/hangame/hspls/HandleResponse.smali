.class public Lcom/hangame/hspls/HandleResponse;
.super Ljava/lang/Object;


# instance fields
.field private resultCode:I

.field private resultData:Ljava/lang/Object;

.field private resultString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2707

    iput v0, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2707

    iput v0, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    iput p1, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    iput-object p2, p0, Lcom/hangame/hspls/HandleResponse;->resultString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    return v0
.end method

.method public getResultData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/HandleResponse;->resultData:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hspls/HandleResponse;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    return-void
.end method

.method public setResultData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hspls/HandleResponse;->resultData:Ljava/lang/Object;

    return-void
.end method

.method public setResultString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hspls/HandleResponse;->resultString:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hangame/hspls/HandleResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hspls/HandleResponse;->resultData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
