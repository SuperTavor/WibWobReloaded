.class public Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;
.super Ljava/lang/Exception;


# instance fields
.field mResult:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;->mResult:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;->mResult:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    return-object v0
.end method
