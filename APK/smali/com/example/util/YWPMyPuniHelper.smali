.class public Lcom/example/util/YWPMyPuniHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/util/h;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Z

.field private static m:Lcom/example/util/YWPMyPuniHelper;


# instance fields
.field private n:Landroid/app/Activity;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/view/SurfaceView;

.field private q:Lcom/example/util/c;

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/example/util/YWPMyPuniHelper;->a:I

    sput v0, Lcom/example/util/YWPMyPuniHelper;->b:I

    sput v2, Lcom/example/util/YWPMyPuniHelper;->c:I

    sput v0, Lcom/example/util/YWPMyPuniHelper;->d:I

    sput v2, Lcom/example/util/YWPMyPuniHelper;->e:I

    const-class v0, Lcom/example/util/YWPMyPuniHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPMyPuniHelper;->f:Ljava/lang/String;

    sput-boolean v1, Lcom/example/util/YWPMyPuniHelper;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/example/util/YWPMyPuniHelper;->r:Z

    iput-boolean v0, p0, Lcom/example/util/YWPMyPuniHelper;->s:Z

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v5, v4

    div-float/2addr v2, v5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/util/YWPMyPuniHelper;->l:Z

    return-void
.end method

.method public static a(F)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v0}, Lcom/example/util/c;->getMinBright()I

    move-result v0

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v1, v1, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v1}, Lcom/example/util/c;->getMaxBright()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v1, v1, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v1, v0}, Lcom/example/util/c;->setBrightness(I)V

    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 3

    sput p0, Lcom/example/util/YWPMyPuniHelper;->k:I

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "puni_image_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/example/util/YWPMyPuniHelper;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "puni_image_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPMyPuniHelper;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V
    .locals 1

    new-instance v0, Lcom/example/util/YWPMyPuniHelper;

    invoke-direct {v0}, Lcom/example/util/YWPMyPuniHelper;-><init>()V

    sput-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iput-object p0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iput-object p1, v0, Lcom/example/util/YWPMyPuniHelper;->o:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iput-object p2, v0, Lcom/example/util/YWPMyPuniHelper;->p:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/example/util/YWPMyPuniHelper;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/util/YWPMyPuniHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPMyPuniHelper;->t:Z

    return p1
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/ak;

    invoke-direct {v1}, Lcom/example/util/ak;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(F)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->returnCurrentCameraBrightness(F)V

    return-void
.end method

.method static synthetic b(Lcom/example/util/YWPMyPuniHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPMyPuniHelper;->m()V

    return-void
.end method

.method public static b([B)V
    .locals 9

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v1, 0x0

    array-length v0, p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-boolean v2, v2, Lcom/example/util/c;->a:Z

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-boolean v2, v2, Lcom/example/util/c;->a:Z

    invoke-static {v2}, Lcom/example/util/c;->a(Z)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    const v2, 0x3ec28f5c    # 0.38f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/example/util/YWPMyPuniHelper;->l:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v3, Lcom/example/util/YWPMyPuniHelper;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v0, 0xb4

    const/16 v4, 0x10c

    invoke-static {v2, v0, v4}, Lcom/example/util/YWPMyPuniHelper;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-boolean v2, v2, Lcom/example/util/c;->a:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v0, v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v6, v0

    int-to-float v1, v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v4}, Lcom/example/util/YWPMyPuniHelper;->a(Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/example/util/YWPMyPuniHelper;->k:I

    invoke-static {v1, v0, v2}, Lcom/example/util/YWPMyPuniHelper;->returnMyPuniImgStatus(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-boolean v2, v2, Lcom/example/util/c;->a:Z

    invoke-static {v2}, Lcom/example/util/c;->a(Z)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-boolean v2, v2, Lcom/example/util/c;->a:Z

    invoke-static {v2}, Lcom/example/util/c;->a(Z)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_0

    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    sget-object v3, Lcom/example/util/YWPMyPuniHelper;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/example/util/YWPMyPuniHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPMyPuniHelper;->s:Z

    return p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-boolean v0, v0, Lcom/example/util/YWPMyPuniHelper;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/al;

    invoke-direct {v1}, Lcom/example/util/al;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/example/util/YWPMyPuniHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPMyPuniHelper;->o()V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/example/util/YWPMyPuniHelper;->g:Ljava/lang/String;

    return-void
.end method

.method public static d()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/example/util/am;

    invoke-direct {v1}, Lcom/example/util/am;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lcom/example/util/YWPMyPuniHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPMyPuniHelper;->n()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/example/util/YWPMyPuniHelper;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/example/util/YWPMyPuniHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    return-object v0
.end method

.method public static e()V
    .locals 4

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-boolean v0, v0, Lcom/example/util/YWPMyPuniHelper;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/example/util/ao;

    invoke-direct {v1}, Lcom/example/util/ao;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static f()V
    .locals 3

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/example/util/YWPMyPuniHelper;->s:Z

    sget v0, Lcom/example/util/YWPMyPuniHelper;->c:I

    const-string v1, ""

    sget v2, Lcom/example/util/YWPMyPuniHelper;->k:I

    invoke-static {v0, v1, v2}, Lcom/example/util/YWPMyPuniHelper;->returnMyPuniImgStatus(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic f(Lcom/example/util/YWPMyPuniHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPMyPuniHelper;->r:Z

    return v0
.end method

.method public static g()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/example/util/YWPMyPuniHelper;->s:Z

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/aq;

    invoke-direct {v1}, Lcom/example/util/aq;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/ar;

    invoke-direct {v1}, Lcom/example/util/ar;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static i()V
    .locals 2

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-boolean v0, v0, Lcom/example/util/YWPMyPuniHelper;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/example/util/YWPMyPuniHelper;->r:Z

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/as;

    invoke-direct {v1}, Lcom/example/util/as;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()F
    .locals 1

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v0, v0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v0}, Lcom/example/util/c;->getCurrentBrightness()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static k()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v1, v1, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v1, v1, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v1}, Lcom/example/util/c;->getMinBright()I

    move-result v1

    sget-object v2, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    iget-object v2, v2, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v2}, Lcom/example/util/c;->getMaxBright()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic l()Lcom/example/util/YWPMyPuniHelper;
    .locals 1

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    return-object v0
.end method

.method private m()V
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd851eb851eb852L    # 0.38

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Lcom/example/util/c;

    iget-object v2, p0, Lcom/example/util/YWPMyPuniHelper;->n:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/example/util/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    iget-object v1, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v1, p0}, Lcom/example/util/c;->setOnCameraStatusListener(Lcom/example/util/h;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->o:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMyPuniHelper;->m:Lcom/example/util/YWPMyPuniHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/example/util/YWPMyPuniHelper;->s:Z

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/example/util/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/util/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/example/util/YWPMyPuniHelper;->q:Lcom/example/util/c;

    invoke-virtual {v0}, Lcom/example/util/c;->a()V

    :cond_0
    return-void
.end method

.method private static native returnCurrentCameraBrightness(F)V
.end method

.method private static native returnMyPuniImgStatus(ILjava/lang/String;I)V
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([B)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/example/util/YWPMyPuniHelper;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
