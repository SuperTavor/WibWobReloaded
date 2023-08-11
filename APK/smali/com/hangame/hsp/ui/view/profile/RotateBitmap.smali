.class Lcom/hangame/hsp/ui/view/profile/RotateBitmap;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isOrientationChanged()Z
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->mRotation:I

    return-void
.end method
