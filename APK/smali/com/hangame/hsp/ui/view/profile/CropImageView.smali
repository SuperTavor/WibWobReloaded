.class Lcom/hangame/hsp/ui/view/profile/CropImageView;
.super Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    iget-object v0, p1, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v1

    mul-float/2addr v1, v4

    div-float v0, v3, v0

    mul-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v1, v6

    aget v1, v1, v7

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->zoomTo(FFFF)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->ensureVisible(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V

    return-void
.end method

.method private ensureVisible(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p1, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v2, :cond_2

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->panBy(FF)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mBitmapDisplayed:Lcom/hangame/hsp/ui/view/profile/RotateBitmap;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->invalidate()V

    iget-boolean v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->centerBasedOnHighlightView(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    return v5

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->getHit(FF)I

    move-result v2

    if-eq v2, v5, :cond_3

    iput v2, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionEdge:I

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastY:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->Move:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->setMode(Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->Grow:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->centerBasedOnHighlightView(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    sget-object v1, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->None:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->setMode(Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastY:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->handleMotion(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mLastY:F

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mMotionHighlightView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->ensureVisible(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v5, v5}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->center(ZZ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0, v5, v5}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->center(ZZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->postTranslate(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->invalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zoomIn()V
    .locals 4

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->zoomIn()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    invoke-super {p0}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->zoomOut()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->zoomTo(FFF)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v2, v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method
