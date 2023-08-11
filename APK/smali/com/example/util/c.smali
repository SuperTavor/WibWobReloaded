.class public Lcom/example/util/c;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Lcom/example/util/h;

.field private d:Landroid/view/SurfaceHolder;

.field private e:Landroid/hardware/Camera;

.field private f:Landroid/hardware/Camera$ShutterCallback;

.field private g:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/example/util/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/util/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/example/util/c;->a:Z

    iput-boolean v0, p0, Lcom/example/util/c;->b:Z

    new-instance v0, Lcom/example/util/d;

    invoke-direct {v0, p0}, Lcom/example/util/d;-><init>(Lcom/example/util/c;)V

    iput-object v0, p0, Lcom/example/util/c;->f:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lcom/example/util/e;

    invoke-direct {v0, p0}, Lcom/example/util/e;-><init>(Lcom/example/util/c;)V

    iput-object v0, p0, Lcom/example/util/c;->g:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/example/util/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Z)I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    if-nez p0, :cond_0

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v5, v6, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/example/sgf/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    :cond_3
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v6, :cond_4

    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_2
    return v0

    :cond_4
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/util/List;F)Landroid/hardware/Camera$Size;
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    cmpg-float v5, p1, v6

    if-gez v5, :cond_0

    cmpl-float v5, v1, v6

    if-lez v5, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    :cond_0
    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v5

    if-le v1, v2, :cond_3

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/example/util/c;->b(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method private static a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    cmpg-float v5, p1, v6

    if-gez v5, :cond_0

    cmpl-float v5, v1, v6

    if-lez v5, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    :cond_0
    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v5

    if-gt v1, p2, :cond_3

    if-le v1, v2, :cond_3

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/example/util/c;->b(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "continuous-picture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "auto"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/example/util/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/example/util/c;->d:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/example/util/c;->d:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/example/util/c;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/example/util/c;->d:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method static synthetic a(Lcom/example/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    return-void
.end method

.method private static b(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v5

    if-le v1, v2, :cond_1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/example/util/c;)Lcom/example/util/h;
    .locals 1

    iget-object v0, p0, Lcom/example/util/c;->c:Lcom/example/util/h;

    return-object v0
.end method

.method static synthetic c(Lcom/example/util/c;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lcom/example/util/c;->f:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/example/util/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic d(Lcom/example/util/c;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/example/util/c;->g:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    new-instance v1, Lcom/example/util/f;

    invoke-direct {v1, p0}, Lcom/example/util/f;-><init>(Lcom/example/util/c;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    new-instance v1, Lcom/example/util/g;

    invoke-direct {v1, p0}, Lcom/example/util/g;-><init>(Lcom/example/util/c;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    goto :goto_0
.end method

.method public getCurrentBrightness()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getMaxBright()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getMinBright()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    :cond_0
    return v0
.end method

.method public setBrightness(I)V
    .locals 2

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public setCameraFront(Z)V
    .locals 7

    const/16 v1, 0x5a

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    if-nez p1, :cond_0

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eq v5, v6, :cond_1

    :cond_0
    if-eqz p1, :cond_7

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_7

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v4, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    :cond_2
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/sgf/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v6, :cond_5

    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_3
    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/example/util/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/example/util/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/example/util/c;->a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/example/util/c;->a(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object v2

    const-string v3, "Nexus 4"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :goto_4
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/example/util/c;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    iput-boolean p1, p0, Lcom/example/util/c;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_1
    move v0, v1

    goto/16 :goto_2

    :pswitch_2
    const/16 v0, 0xb4

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0x10e

    goto/16 :goto_2

    :cond_5
    :try_start_3
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_3

    :cond_6
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOnCameraStatusListener(Lcom/example/util/h;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/c;->c:Lcom/example/util/h;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/example/util/c;->a:Z

    invoke-virtual {p0, v0}, Lcom/example/util/c;->setCameraFront(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/c;->e:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/example/util/c;->c()V

    goto :goto_0
.end method
