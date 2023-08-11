.class public Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;
.super Ljava/lang/Object;


# instance fields
.field mCurrencyCode:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mPriceAmountMicro:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mItemType:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mJson:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mSku:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mType:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mPrice:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mTitle:Ljava/lang/String;

    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mDescription:Ljava/lang/String;

    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mPriceAmountMicro:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mPriceAmountMicro:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
