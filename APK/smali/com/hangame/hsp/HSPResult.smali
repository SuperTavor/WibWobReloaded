.class public final Lcom/hangame/hsp/HSPResult;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPResult"


# instance fields
.field private final mCode:I

.field private mDetail:Ljava/lang/String;

.field private mDetailCode:I

.field private final mDomain:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/HSPResult;->mDomain:Ljava/lang/String;

    iput p2, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    iput-object p4, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    iput p3, p0, Lcom/hangame/hsp/HSPResult;->mDetailCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/HSPResult;->mDomain:Ljava/lang/String;

    iput p2, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    iput-object p3, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hsp/HSPResult;->mDetailCode:I

    return-void
.end method

.method public static getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static getResult(Ljava/lang/String;II)Lcom/hangame/hsp/HSPResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;IILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static getResult(Ljava/lang/String;IILjava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    new-instance v0, Lcom/hangame/hsp/HSPResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/HSPResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public static getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 1

    new-instance v0, Lcom/hangame/hsp/HSPResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPResult;->mDetailCode:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPResult;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget v0, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    const v1, 0x1
    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestResultPageURL(Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;)V
    .locals 2

    const-string v0, "HSPResult"

    const-string v1, "requestResultPageURL()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPResult$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPResult$1;-><init>(Lcom/hangame/hsp/HSPResult;Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;)V

    iget v1, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPResultService;->requestErrorPageURL(ILcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    return-void
.end method

.method public setDetailCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/HSPResult;->mDetailCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPResult [Domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPResult;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPResult;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DetailCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPResult;->mDetailCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", Detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPResult;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
