.class public Lcom/hangame/hsp/cgp/response/CGPResponse;
.super Ljava/lang/Object;


# instance fields
.field private promotionMap:Ljava/util/HashMap;

.field private promotionStatusMap:Ljava/util/HashMap;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    iput p1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/util/HashMap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    iput p1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->result:I

    return-void
.end method


# virtual methods
.method public getCGPDataFromIdAndShape(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/response/CGPData;
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/cgp/response/CGPData;

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v3

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v3

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCurPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionState;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    goto :goto_0
.end method

.method public getPromotionMap()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPromotionStatusMap()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->result:I

    return v0
.end method

.method public setPromotionMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    return-void
.end method

.method public setPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;Lcom/hangame/hsp/cgp/model/PromotionState;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPromotionStatusMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->result:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CGPResponse [promotionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", promotionStatusMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->promotionStatusMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/cgp/response/CGPResponse;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
