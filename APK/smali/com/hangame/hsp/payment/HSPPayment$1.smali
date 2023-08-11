.class final Lcom/hangame/hsp/payment/HSPPayment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductInfo;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductInfo;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductInfo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductInfo;->productInfoResult:Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfoResult;->productInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;

    new-instance v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;-><init>()V

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productId:Ljava/lang/String;

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductID:Ljava/lang/String;

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productName:Ljava/lang/String;

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductName:Ljava/lang/String;

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mProductDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->productInformation:Ljava/lang/String;

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPoductInformation:Ljava/lang/String;

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->currency:Ljava/lang/String;

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mCurrency:Ljava/lang/String;

    iget-wide v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->price:D

    iput-wide v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mPrice:D

    new-instance v4, Ljava/util/Date;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->validStartDate:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidStartDate:Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->validEndDate:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mValidEndDate:Ljava/util/Date;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mItemInfos:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ProductInfo;->itemInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;

    new-instance v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;

    invoke-direct {v5}, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;-><init>()V

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemId:Ljava/lang/String;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemID:Ljava/lang/String;

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemName:Ljava/lang/String;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemName:Ljava/lang/String;

    const-string v6, "COIN"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_COIN:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    :goto_2
    const-string v6, "Single"

    iget-object v7, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemEverlastingType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_ONCE:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    :goto_3
    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemDescription:Ljava/lang/String;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemDescription:Ljava/lang/String;

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemInformation:Ljava/lang/String;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemInfomation:Ljava/lang/String;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/ItemInfo;->itemQuantity:I

    iput v0, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemQuantity:I

    iget-object v0, v3, Lcom/hangame/hsp/payment/HSPPaymentProductInfo;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_ITEM:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemProvideType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_FOREVER:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    iput-object v6, v5, Lcom/hangame/hsp/payment/HSPPaymentItemInfo;->mItemUseType:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;->onProductInfos(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPaymentProductInfo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;->onProductInfos(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/payment/HSPPayment$1;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/payment/HSPPayment$ProductInfosCB;->onProductInfos(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_4
.end method
