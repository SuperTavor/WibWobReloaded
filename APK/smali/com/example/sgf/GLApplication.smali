.class public abstract Lcom/example/sgf/GLApplication;
.super Ljava/lang/Object;


# static fields
.field public static final GLAPP_FLAG_ABORT:I = 0x4

.field private static b:Lcom/example/sgf/GLApplication;


# instance fields
.field private a:Landroid/os/Handler;

.field public flags:I

.field public platform:Lcom/example/sgf/l;

.field public viewHeight:I

.field public viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/example/sgf/GLApplication;->b:Lcom/example/sgf/GLApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/example/sgf/GLApplication;->flags:I

    iput v0, p0, Lcom/example/sgf/GLApplication;->viewWidth:I

    iput v0, p0, Lcom/example/sgf/GLApplication;->viewHeight:I

    new-instance v0, Lcom/example/sgf/l;

    invoke-direct {v0}, Lcom/example/sgf/l;-><init>()V

    iput-object v0, p0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    sput-object p0, Lcom/example/sgf/GLApplication;->b:Lcom/example/sgf/GLApplication;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/sgf/GLApplication;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Lcom/example/sgf/GLApplication;
    .locals 1

    sget-object v0, Lcom/example/sgf/GLApplication;->b:Lcom/example/sgf/GLApplication;

    return-object v0
.end method

.method public static abortWithMessage(Lcom/example/sgf/GLApplication;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    new-instance v1, Lcom/example/sgf/f;

    invoke-direct {v1, v0, p1}, Lcom/example/sgf/f;-><init>(Lcom/example/sgf/l;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/example/sgf/l;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/example/sgf/GLApplication;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/example/sgf/GLApplication;->flags:I

    return-void
.end method

.method public static executeMainThreadFunctionQueue()V
    .locals 2

    sget-object v0, Lcom/example/sgf/GLApplication;->b:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->a:Landroid/os/Handler;

    new-instance v1, Lcom/example/sgf/e;

    invoke-direct {v1}, Lcom/example/sgf/e;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static instance()Lcom/example/sgf/GLApplication;
    .locals 1

    sget-object v0, Lcom/example/sgf/GLApplication;->b:Lcom/example/sgf/GLApplication;

    return-object v0
.end method


# virtual methods
.method public abstract async()V
.end method

.method public abstract destroy()V
.end method

.method public abstract doEvent(I)V
.end method

.method public hasAsync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initialize()V
.end method

.method public abstract invokeFunctionQueueOnGLThread()V
.end method

.method public abstract invokeFunctionQueueOnMainThread()V
.end method

.method public isAbort()Z
    .locals 1

    iget v0, p0, Lcom/example/sgf/GLApplication;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onTouchEvent(IJ[II)V
.end method

.method public abstract rendering()V
.end method

.method public abstract resize(IIZI)V
.end method
