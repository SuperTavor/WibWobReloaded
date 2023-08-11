.class public Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;
.super Ljava/lang/Object;


# instance fields
.field mPurchaseMap:Ljava/util/Map;

.field mSkuMap:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mSkuMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addPurchase(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addSkuDetails(Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getAllOwnedSkus()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllPurchases()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
