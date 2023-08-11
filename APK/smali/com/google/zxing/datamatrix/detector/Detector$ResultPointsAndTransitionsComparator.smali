.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
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

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result v0

    return v0
.end method
