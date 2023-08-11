.class Lcom/example/util/bb;
.super Landroid/view/SurfaceView;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/example/util/bb;->a:I

    iput p2, p0, Lcom/example/util/bb;->b:I

    invoke-virtual {p0}, Lcom/example/util/bb;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method
