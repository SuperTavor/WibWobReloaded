.class public Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;
.super Ljava/lang/Object;


# instance fields
.field private promoInfoList:Ljava/util/List;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->promoInfoList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->result:I

    return-void
.end method


# virtual methods
.method public getPromoInfoList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->promoInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->result:I

    return v0
.end method

.method public setPromoInfoList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->promoInfoList:Ljava/util/List;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->result:I

    return-void
.end method
