.class public Lcom/example/sgf/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/microedition/khronos/egl/EGL10;

.field private b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private c:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/example/sgf/b;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a(Lcom/example/sgf/d;II)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15

    const/16 v1, 0x20

    new-array v4, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v1, 0x1

    new-array v6, v1, [I

    iget-object v1, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct/range {p0 .. p3}, Lcom/example/sgf/b;->b(Lcom/example/sgf/d;II)[I

    move-result-object v3

    array-length v5, v4

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglChooseConfig"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    aget v8, v6, v1

    const/4 v1, 0x0

    sget-object v2, Lcom/example/sgf/c;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/example/sgf/d;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {p1 .. p1}, Lcom/example/sgf/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v1, 0x8

    move v2, v1

    move v3, v1

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v6, v4, v7

    const/16 v9, 0x3024

    invoke-direct {p0, v6, v9}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v9

    const/16 v10, 0x3023

    invoke-direct {p0, v6, v10}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v10

    const/16 v11, 0x3022

    invoke-direct {p0, v6, v11}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v11

    const/16 v12, 0x3021

    invoke-direct {p0, v6, v12}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v12

    const/16 v13, 0x3025

    invoke-direct {p0, v6, v13}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v13

    const/16 v14, 0x3026

    invoke-direct {p0, v6, v14}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v14

    if-ne v9, v5, :cond_1

    if-ne v10, v3, :cond_1

    if-ne v11, v2, :cond_1

    if-lt v12, v1, :cond_1

    move/from16 v0, p2

    if-lt v13, v0, :cond_1

    move/from16 v0, p3

    if-lt v14, v0, :cond_1

    move-object v1, v6

    :goto_2
    return-object v1

    :pswitch_1
    const/16 v2, 0x8

    move v3, v2

    move v5, v2

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x5

    const/4 v3, 0x6

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x5

    const/4 v1, 0x1

    move v3, v2

    move v5, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v4, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v0, 0x3000

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "EGLError(0x%x)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v1, "EGL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_1

    :pswitch_2
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_1

    :pswitch_3
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_1

    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_1

    :pswitch_5
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3002
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private b(Lcom/example/sgf/d;II)[I
    .locals 8

    const/16 v7, 0x3024

    const/16 v6, 0x3023

    const/16 v5, 0x3022

    const/4 v4, 0x5

    const/16 v3, 0x8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x3040

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/example/sgf/c;->a:[I

    invoke-virtual {p1}, Lcom/example/sgf/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lcom/example/sgf/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3021

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-lez p2, :cond_0

    const/16 v0, 0x3025

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez p3, :cond_1

    const/16 v0, 0x3026

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v0, 0x3038

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3021

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public a(Lcom/example/sgf/d;)V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/example/sgf/b;->a(Lcom/example/sgf/d;II)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/b;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method public b()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method public c()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/b;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v2, p0, Lcom/example/sgf/b;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v2, p0, Lcom/example/sgf/b;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v2, p0, Lcom/example/sgf/b;->a:Ljavax/microedition/khronos/egl/EGL10;

    goto :goto_0
.end method
