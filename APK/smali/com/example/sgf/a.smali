.class public Lcom/example/sgf/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljavax/microedition/khronos/egl/EGL10;

.field private final c:Ljavax/microedition/khronos/egl/EGLConfig;

.field private final d:[I

.field private e:Ljava/lang/Object;

.field private f:Ljavax/microedition/khronos/egl/EGLContext;

.field private g:Ljavax/microedition/khronos/egl/EGLSurface;

.field private h:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private i:I

.field private j:I

.field private k:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/sgf/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/example/sgf/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/example/sgf/a;->d:[I

    invoke-virtual {p1}, Lcom/example/sgf/b;->a()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-virtual {p1}, Lcom/example/sgf/b;->c()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Lcom/example/sgf/b;->b()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/example/sgf/a;->i:I

    return v0
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v4, p0, Lcom/example/sgf/a;->d:[I

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglCreateContext failed!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v5, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    iput p2, p0, Lcom/example/sgf/a;->i:I

    iput p3, p0, Lcom/example/sgf/a;->j:I

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglCreateWindowSurface failed!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 4

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/example/sgf/a;->d:[I

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglCreateContext failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/example/sgf/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglCreatePbufferSurface failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/example/sgf/a;->j:I

    return v0
.end method

.method public c()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public d()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/example/sgf/a;->k:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/a;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/a;->k:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 5

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/sgf/a;->k:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglDestroySurface failed!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/a;->k:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglSwapBuffers failed!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/example/sgf/a;->k()V

    goto :goto_0
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/example/sgf/a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/example/sgf/a;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/example/sgf/a;->e:Ljava/lang/Object;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lcom/example/sgf/a;->i()V

    iget-object v0, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/example/sgf/a;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/example/sgf/a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/a;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0}, Lcom/example/sgf/b;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "eglDestroyContext failed!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
