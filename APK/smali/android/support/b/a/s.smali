.class Landroid/support/b/a/s;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:Landroid/support/b/a/r;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/support/b/a/l;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/support/b/a/r;

    invoke-direct {v0}, Landroid/support/b/a/r;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/s;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/support/b/a/l;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/support/b/a/s;->a:I

    iput v0, p0, Landroid/support/b/a/s;->a:I

    new-instance v0, Landroid/support/b/a/r;

    iget-object v1, p1, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-direct {v0, v1}, Landroid/support/b/a/r;-><init>(Landroid/support/b/a/r;)V

    iput-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    iget-object v0, p1, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-static {v0}, Landroid/support/b/a/r;->b(Landroid/support/b/a/r;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-static {v2}, Landroid/support/b/a/r;->b(Landroid/support/b/a/r;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/b/a/r;->a(Landroid/support/b/a/r;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-static {v0}, Landroid/support/b/a/r;->c(Landroid/support/b/a/r;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-static {v2}, Landroid/support/b/a/r;->c(Landroid/support/b/a/r;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/b/a/r;->b(Landroid/support/b/a/r;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Landroid/support/b/a/s;->e:Z

    iput-boolean v0, p0, Landroid/support/b/a/s;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    invoke-virtual {p0}, Landroid/support/b/a/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-virtual {v1}, Landroid/support/b/a/r;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/support/b/a/s;->l:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/support/b/a/r;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0, p2}, Landroid/support/b/a/s;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-virtual {v0}, Landroid/support/b/a/r;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/b/a/s;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/b/a/s;->k:Z

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/b/a/s;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/b/a/s;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/b/a/s;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/b/a/s;->j:Z

    iget-boolean v1, p0, Landroid/support/b/a/s;->e:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/b/a/s;->i:I

    iget-object v1, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-virtual {v1}, Landroid/support/b/a/r;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/b/a/s;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/b/a/s;->g:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/b/a/s;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/b/a/s;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/b/a/s;->b:Landroid/support/b/a/r;

    invoke-virtual {v0}, Landroid/support/b/a/r;->a()I

    move-result v0

    iput v0, p0, Landroid/support/b/a/s;->i:I

    iget-boolean v0, p0, Landroid/support/b/a/s;->e:Z

    iput-boolean v0, p0, Landroid/support/b/a/s;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/b/a/s;->k:Z

    return-void
.end method

.method public c(II)Z
    .locals 1

    iget-object v0, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/b/a/s;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/support/b/a/s;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/support/b/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/b/a/l;-><init>(Landroid/support/b/a/s;Landroid/support/b/a/m;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/support/b/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/b/a/l;-><init>(Landroid/support/b/a/s;Landroid/support/b/a/m;)V

    return-object v0
.end method
