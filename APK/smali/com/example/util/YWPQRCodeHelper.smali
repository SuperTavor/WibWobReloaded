.class public Lcom/example/util/YWPQRCodeHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/example/util/YWPQRCodeHelper;

.field private static p:Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/SurfaceView;

.field private f:Lcom/example/util/bb;

.field private g:I

.field private h:Landroid/hardware/Camera;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/YWPQRCodeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v0, Lcom/example/util/ba;

    invoke-direct {v0}, Lcom/example/util/ba;-><init>()V

    sput-object v0, Lcom/example/util/YWPQRCodeHelper;->p:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    iput v0, p0, Lcom/example/util/YWPQRCodeHelper;->m:I

    iput-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    iput-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->o:Z

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v4, 0xc8

    const v1, 0x7fffffff

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move v3, v0

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private a(Ljava/util/List;ZII)Landroid/hardware/Camera$Size;
    .locals 12

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    move/from16 v7, p4

    :goto_1
    if-eqz p2, :cond_3

    move v1, p3

    :goto_2
    mul-int v8, p3, p4

    const v4, 0x7fffffff

    const v2, 0x7fffffff

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, v7, :cond_4

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-lt v3, v1, :cond_4

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v10

    if-ge v3, v4, :cond_7

    move v11, v3

    move-object v3, v0

    move v0, v11

    :goto_4
    move-object v4, v3

    move-object v3, v5

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_5
    move-object v5, v3

    move-object v6, v4

    move v4, v2

    move v2, v0

    goto :goto_3

    :cond_2
    move v7, p3

    goto :goto_1

    :cond_3
    move/from16 v1, p4

    goto :goto_2

    :cond_4
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v10

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_6

    move v2, v4

    move-object v4, v6

    move-object v11, v0

    move v0, v3

    move-object v3, v11

    goto :goto_5

    :cond_5
    if-nez v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_6
    move v0, v2

    move-object v3, v5

    move v2, v4

    move-object v4, v6

    goto :goto_5

    :cond_7
    move v0, v4

    move-object v3, v6

    goto :goto_4
.end method

.method static synthetic a(Lcom/example/util/YWPQRCodeHelper;)Lcom/example/util/bb;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iget-object v0, v0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/at;

    invoke-direct {v1}, Lcom/example/util/at;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lcom/example/util/YWPQRCodeHelper;->i:I

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->k()V

    :cond_0
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_1
    return-void
.end method

.method static synthetic a(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V
    .locals 1

    new-instance v0, Lcom/example/util/YWPQRCodeHelper;

    invoke-direct {v0}, Lcom/example/util/YWPQRCodeHelper;-><init>()V

    sput-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iput-object p0, v0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iput-object p1, v0, Lcom/example/util/YWPQRCodeHelper;->d:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iput-object p2, v0, Lcom/example/util/YWPQRCodeHelper;->e:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method static synthetic a(Lcom/example/util/YWPQRCodeHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/util/YWPQRCodeHelper;->a(I)V

    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/util/YWPQRCodeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPQRCodeHelper;->j:Z

    return p1
.end method

.method private static native analyzeQRCode(Ljava/lang/String;)I
.end method

.method public static b()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/example/util/au;

    invoke-direct {v1}, Lcom/example/util/au;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/example/util/YWPQRCodeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->i()V

    return-void
.end method

.method static synthetic b(Lcom/example/util/YWPQRCodeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/example/util/YWPQRCodeHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iget-object v0, v0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/aw;

    invoke-direct {v1}, Lcom/example/util/aw;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/example/util/YWPQRCodeHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->j()V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iget-boolean v0, v0, Lcom/example/util/YWPQRCodeHelper;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iget-object v0, v0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    new-instance v1, Lcom/example/util/ax;

    invoke-direct {v1}, Lcom/example/util/ax;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/example/util/YWPQRCodeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    return v0
.end method

.method public static f()V
    .locals 4

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    iget-boolean v0, v0, Lcom/example/util/YWPQRCodeHelper;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/example/util/ay;

    invoke-direct {v1}, Lcom/example/util/ay;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic g()Lcom/example/util/YWPQRCodeHelper;
    .locals 1

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->b:Lcom/example/util/YWPQRCodeHelper;

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private i()V
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/util/bb;

    iget-object v1, p0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/example/util/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    invoke-virtual {v0}, Lcom/example/util/bb;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/example/util/YWPQRCodeHelper;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->k()V

    :cond_0
    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->h()V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    invoke-virtual {v0}, Lcom/example/util/bb;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method private static native returnQRCode(ILjava/lang/String;)V
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->k()V

    iput-boolean v8, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v1, p0, Lcom/example/util/YWPQRCodeHelper;->g:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v9, :cond_2

    move v8, v9

    :cond_2
    int-to-double v0, v3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v4

    double-to-int v6, v0

    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    sub-int v1, v2, v6

    div-int/lit8 v4, v1, 0x2

    sub-int v1, v3, v6

    div-int/lit8 v5, v1, 0x2

    move-object v1, p1

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->analyzeQRCode(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v1, v9, :cond_4

    :cond_3
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/example/util/YWPQRCodeHelper;->i:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/example/util/YWPQRCodeHelper;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/example/util/YWPQRCodeHelper;->a(I)V

    iput-boolean v9, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    :try_start_1
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10

    const/4 v0, 0x1

    const-wide v8, 0x3fd851eb851eb852L    # 0.38

    const/4 v7, 0x5

    const/4 v1, 0x0

    sget-object v2, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceChanged:width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    iget v2, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/example/util/YWPQRCodeHelper;->m:I

    if-nez v2, :cond_9

    :cond_2
    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0, p3, p4}, Lcom/example/util/YWPQRCodeHelper;->a(Ljava/util/List;ZII)Landroid/hardware/Camera$Size;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    const-string v1, "OptimalPreviewSize not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-static {v7, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v2, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget-object v2, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreviewSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    iget v2, v4, Landroid/hardware/Camera$Size;->height:I

    :goto_2
    iput v2, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    if-eqz v0, :cond_b

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    :goto_3
    iput v0, p0, Lcom/example/util/YWPQRCodeHelper;->m:I

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "barcode"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "barcode"

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_5
    const-string v0, "macro"

    invoke-direct {p0, v3, v0}, Lcom/example/util/YWPQRCodeHelper;->a(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "continuous-picture"

    invoke-direct {p0, v3, v0}, Lcom/example/util/YWPQRCodeHelper;->a(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "auto"

    invoke-direct {p0, v3, v0}, Lcom/example/util/YWPQRCodeHelper;->a(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/example/util/YWPQRCodeHelper;->a(Ljava/util/List;)I

    move-result v0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    if-le v0, v3, :cond_7

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    :cond_7
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :try_start_1
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_4
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v3, p0, Lcom/example/util/YWPQRCodeHelper;->g:I

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_c

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v2, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_5
    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_9
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    invoke-virtual {v0}, Lcom/example/util/bb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    if-eqz v0, :cond_d

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v2, p4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-direct {v0, p3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_6
    iget-object v2, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    invoke-virtual {v2, v0}, Lcom/example/util/bb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "previewHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->f:Lcom/example/util/bb;

    iget v2, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    iget v3, p0, Lcom/example/util/YWPQRCodeHelper;->m:I

    invoke-virtual {v0, v2, v3}, Lcom/example/util/bb;->a(II)V

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/example/util/YWPQRCodeHelper;->a(I)V

    goto/16 :goto_0

    :cond_a
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_2

    :cond_b
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    invoke-static {v7, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    invoke-static {v7, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    goto/16 :goto_4

    :pswitch_1
    const/16 v0, 0x5a

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0xb4

    goto/16 :goto_4

    :pswitch_3
    const/16 v0, 0x10e

    goto/16 :goto_4

    :cond_c
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_5

    :cond_d
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/16 :goto_6

    :cond_e
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v2, p0, Lcom/example/util/YWPQRCodeHelper;->n:Z

    if-eqz v2, :cond_f

    int-to-double v2, p3

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_6

    :cond_f
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x0

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/example/util/YWPQRCodeHelper;->g:I

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v0, v1

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    iput v0, p0, Lcom/example/util/YWPQRCodeHelper;->g:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/example/util/YWPQRCodeHelper;->g:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    invoke-static {v6, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_3
    iget-object v0, p0, Lcom/example/util/YWPQRCodeHelper;->h:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iput v1, p0, Lcom/example/util/YWPQRCodeHelper;->l:I

    iput v1, p0, Lcom/example/util/YWPQRCodeHelper;->m:I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    invoke-static {v6, v0}, Lcom/example/util/YWPQRCodeHelper;->returnQRCode(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPQRCodeHelper;->a:Ljava/lang/String;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/example/util/YWPQRCodeHelper;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->k()V

    :cond_0
    invoke-direct {p0}, Lcom/example/util/YWPQRCodeHelper;->h()V

    return-void
.end method
