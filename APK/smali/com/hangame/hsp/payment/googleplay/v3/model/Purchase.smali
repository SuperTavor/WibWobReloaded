.class public Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;
.super Ljava/lang/Object;


# instance fields
.field mAutoRenewing:Ljava/lang/String;

.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mItemType:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOriginalJson:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOrderId:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPackageName:Ljava/lang/String;

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mSku:Ljava/lang/String;

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPurchaseTime:J

    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPurchaseState:I

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mSignature:Ljava/lang/String;

    const-string v1, "autoRenewing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mAutoRenewing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAutoRenewing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mAutoRenewing:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
