.class public final Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
.super Ljava/lang/Object;


# instance fields
.field private final bits:Lcom/google/zxing/common/BitMatrix;

.field private final points:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    iput-object p2, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBits()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->points:Ljava/util/List;

    return-object v0
.end method
