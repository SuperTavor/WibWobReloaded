.class final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/zxing/Result;

    check-cast p2, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;->compare(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I

    move-result v0

    return v0
.end method
