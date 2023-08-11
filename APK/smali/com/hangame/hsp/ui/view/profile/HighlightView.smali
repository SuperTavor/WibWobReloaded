.class Lcom/hangame/hsp/ui/view/profile/HighlightView;
.super Ljava/lang/Object;


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private final mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->None:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mContext:Landroid/view/View;

    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .locals 1

    const-string v0, "hsp_profile_photocrop_icon_horizontal_crop"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    const-string v0, "hsp_profile_photocrop_icon_vertical_crop"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/16 v2, -0x7600

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    sget-object v1, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->Grow:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    goto/16 :goto_1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    move v0, v1

    :goto_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    :goto_1
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    if-eqz v0, :cond_1

    or-int/lit8 v3, v3, 0x4

    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    if-eqz v2, :cond_2

    or-int/lit8 v3, v3, 0x8

    :cond_2
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_5

    if-eqz v2, :cond_5

    or-int/lit8 v3, v3, 0x10

    move v0, v3

    :goto_2
    if-ne v0, v1, :cond_3

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x20

    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_1
.end method

.method growBy(FF)V
    .locals 8

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v6

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v0

    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v0, p1, v6

    if-lez v0, :cond_a

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v7, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float p1, v0, v7

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v0

    move v0, p2

    move v1, p1

    :goto_1
    cmpl-float v4, v0, v6

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    iget-boolean v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_1

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    mul-float/2addr v1, v0

    :cond_1
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    div-float v0, v2, v0

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    :goto_3
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    :cond_9
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4

    :cond_a
    move v0, p2

    move v1, p1

    goto/16 :goto_1
.end method

.method handleMotion(IFF)V
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v3

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x20

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_1
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_3

    move p3, v0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method

.method moveBy(FF)V
    .locals 7

    const/16 v6, -0xa

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mIsFocused:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mHidden:Z

    return-void
.end method

.method public setMode(Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 4

    const/16 v3, 0x7d

    const/16 v2, 0x32

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iput-boolean p4, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMaintainAspectRatio:Z

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mInitialAspectRatio:F

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;->None:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/HighlightView;->mMode:Lcom/hangame/hsp/ui/view/profile/HighlightView$ModifyMode;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->init()V

    return-void
.end method
