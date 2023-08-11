.class public Lcom/example/sgf/n;
.super Ljava/lang/Thread;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/example/sgf/q;

.field private final c:Lcom/example/sgf/GLApplication;

.field private d:Z

.field private e:I

.field private f:Lcom/example/sgf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/sgf/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/example/sgf/GLApplication;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/example/sgf/q;->a:Lcom/example/sgf/q;

    iput-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    iput-object p1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {p0}, Lcom/example/sgf/n;->f()V

    return-void
.end method

.method static synthetic a(Lcom/example/sgf/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/sgf/n;->l()V

    return-void
.end method

.method static synthetic a(Lcom/example/sgf/n;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/example/sgf/n;->a(Ljava/lang/Object;II)V

    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    iget-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v2, Lcom/example/sgf/q;->b:Lcom/example/sgf/q;

    iput-object v2, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    invoke-direct {p0}, Lcom/example/sgf/n;->j()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/example/sgf/a;->a(Ljava/lang/Object;II)V

    iput-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    return-void
.end method

.method static synthetic b(Lcom/example/sgf/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/sgf/n;->k()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    new-instance v1, Lcom/example/sgf/b;

    invoke-direct {v1}, Lcom/example/sgf/b;-><init>()V

    iput-object v1, v0, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    iget-object v1, p0, Lcom/example/sgf/n;->f:Lcom/example/sgf/d;

    invoke-virtual {v0, v1}, Lcom/example/sgf/b;->a(Lcom/example/sgf/d;)V

    return-void
.end method

.method private h()V
    .locals 2

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v1, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    invoke-virtual {v0}, Lcom/example/sgf/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/example/sgf/a;->h()V

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/example/sgf/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/example/sgf/n;->h()V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    iget-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v2, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/example/sgf/q;->b:Lcom/example/sgf/q;

    iput-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    :cond_0
    invoke-direct {p0}, Lcom/example/sgf/n;->j()V

    invoke-virtual {v0}, Lcom/example/sgf/a;->i()V

    iget-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v2, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/example/sgf/a;->m()V

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    invoke-virtual {v0}, Lcom/example/sgf/b;->d()V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/example/sgf/a;

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v1, v1, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v1, v1, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    invoke-direct {v0, v1}, Lcom/example/sgf/a;-><init>(Lcom/example/sgf/b;)V

    iget-boolean v1, p0, Lcom/example/sgf/n;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/example/sgf/a;->l()V

    :cond_0
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v1, v1, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iput-object v0, v1, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/example/sgf/q;->b:Lcom/example/sgf/q;

    iput-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->a:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->b:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/example/sgf/n;->e:I

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v1, Lcom/example/sgf/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/example/sgf/r;-><init>(Lcom/example/sgf/n;Lcom/example/sgf/o;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-direct {p0}, Lcom/example/sgf/n;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/example/sgf/n;->d:Z

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/example/sgf/q;->a:Lcom/example/sgf/q;

    iput-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->c:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->d:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->g:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    sget-object v1, Lcom/example/sgf/p;->e:Lcom/example/sgf/p;

    invoke-virtual {v1}, Lcom/example/sgf/p;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/sgf/GLApplication;->doEvent(I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v1, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    iput-object v0, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    :try_start_0
    invoke-virtual {p0}, Lcom/example/sgf/n;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method f()V
    .locals 10

    const-wide/16 v8, 0x400

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-int v1, v2

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/example/sgf/n;->e:I

    sget-object v1, Lcom/example/sgf/d;->a:Lcom/example/sgf/d;

    iput-object v1, p0, Lcom/example/sgf/n;->f:Lcom/example/sgf/d;

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "PixelFormat=RGBA_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalMemory[KB] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeMemory[KB] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usedMemory[KB] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxMemory[KB] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x6

    iput v1, p0, Lcom/example/sgf/n;->e:I

    sget-object v1, Lcom/example/sgf/d;->d:Lcom/example/sgf/d;

    iput-object v1, p0, Lcom/example/sgf/n;->f:Lcom/example/sgf/d;

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "PixelFormat=RGBA_5551"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 6

    sget-object v0, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v1, "RenderingThread:run:start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/example/sgf/n;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "RenderingThread:run:wait available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Lcom/example/sgf/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/example/sgf/n;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/example/sgf/n;->h()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/example/sgf/a;->g()V

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "RenderingThread:run:application initialize begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->initialize()V

    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "RenderingThread:run:application initialize finished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->hasAsync()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/example/sgf/ab;

    iget-object v2, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-direct {v1, v2}, Lcom/example/sgf/ab;-><init>(Lcom/example/sgf/GLApplication;)V

    invoke-virtual {v1}, Lcom/example/sgf/ab;->start()V

    :cond_2
    sget-object v1, Lcom/example/sgf/n;->a:Ljava/lang/String;

    const-string v2, "RenderingThread:run:loop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/example/sgf/n;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->isAbort()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/example/sgf/n;->b:Lcom/example/sgf/q;

    sget-object v2, Lcom/example/sgf/q;->a:Lcom/example/sgf/q;

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/example/sgf/a;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/example/sgf/a;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/example/sgf/a;->g()V

    :cond_3
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget v1, v1, Lcom/example/sgf/GLApplication;->viewWidth:I

    invoke-virtual {v0}, Lcom/example/sgf/a;->a()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget v1, v1, Lcom/example/sgf/GLApplication;->viewHeight:I

    invoke-virtual {v0}, Lcom/example/sgf/a;->b()I

    move-result v2

    if-eq v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v0}, Lcom/example/sgf/a;->a()I

    move-result v2

    iput v2, v1, Lcom/example/sgf/GLApplication;->viewWidth:I

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v0}, Lcom/example/sgf/a;->b()I

    move-result v2

    iput v2, v1, Lcom/example/sgf/GLApplication;->viewHeight:I

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget-object v2, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget v2, v2, Lcom/example/sgf/GLApplication;->viewWidth:I

    iget-object v3, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    iget v3, v3, Lcom/example/sgf/GLApplication;->viewHeight:I

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/sgf/MainActivity;->isShowStatusModel()Z

    move-result v4

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/example/sgf/MainActivity;->getDeviceSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/example/sgf/GLApplication;->resize(IIZI)V

    :cond_5
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->rendering()V

    invoke-virtual {v0}, Lcom/example/sgf/a;->j()V

    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->invokeFunctionQueueOnGLThread()V

    :goto_3
    invoke-direct {p0}, Lcom/example/sgf/n;->h()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/example/sgf/a;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/example/sgf/a;->h()V

    :cond_7
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->invokeFunctionQueueOnGLThread()V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/example/sgf/n;->c:Lcom/example/sgf/GLApplication;

    invoke-virtual {v1}, Lcom/example/sgf/GLApplication;->destroy()V

    invoke-virtual {v0}, Lcom/example/sgf/a;->h()V

    return-void
.end method
