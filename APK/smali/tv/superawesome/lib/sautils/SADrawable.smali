.class public Ltv/superawesome/lib/sautils/SADrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mCornerRadius:F

.field private final mMargin:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FI)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mRect:Landroid/graphics/RectF;

    iput p2, p0, Ltv/superawesome/lib/sautils/SADrawable;->mCornerRadius:F

    iput p3, p0, Ltv/superawesome/lib/sautils/SADrawable;->mMargin:I

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ltv/superawesome/lib/sautils/SADrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Ltv/superawesome/lib/sautils/SADrawable;->mCornerRadius:F

    iget v2, p0, Ltv/superawesome/lib/sautils/SADrawable;->mCornerRadius:F

    iget-object v3, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Ltv/superawesome/lib/sautils/SADrawable;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Ltv/superawesome/lib/sautils/SADrawable;->mMargin:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Ltv/superawesome/lib/sautils/SADrawable;->mMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Ltv/superawesome/lib/sautils/SADrawable;->mMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SADrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
