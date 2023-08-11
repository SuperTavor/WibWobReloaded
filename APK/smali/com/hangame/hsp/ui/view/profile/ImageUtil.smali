.class Lcom/hangame/hsp/ui/view/profile/ImageUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_1

    move v0, v1

    :goto_0
    if-ne p1, v10, :cond_2

    const/16 v2, 0x80

    :goto_1
    if-ge v2, v0, :cond_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0

    :cond_2
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_3
    if-ne p2, v10, :cond_4

    if-ne p1, v10, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    if-eq p1, v10, :cond_0

    move v0, v2

    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method

.method private static computeSampleSize(Ljava/io/InputStream;II)I
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    mul-int v1, p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    return v0
.end method

.method public static degreesToExifOrientation(F)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final loadBitmapFromLocalUri(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->computeSampleSize(Ljava/io/InputStream;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Lcom/hangame/hsp/ui/view/profile/ImageUtil$1;

    invoke-direct {v2, v0}, Lcom/hangame/hsp/ui/view/profile/ImageUtil$1;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
