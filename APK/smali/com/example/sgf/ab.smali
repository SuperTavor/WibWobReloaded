.class public Lcom/example/sgf/ab;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/example/sgf/GLApplication;


# direct methods
.method public constructor <init>(Lcom/example/sgf/GLApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/example/sgf/ab;->a:Lcom/example/sgf/GLApplication;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/ab;->a:Lcom/example/sgf/GLApplication;

    iget-object v0, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v0, v0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    new-instance v1, Lcom/example/sgf/a;

    iget-object v2, p0, Lcom/example/sgf/ab;->a:Lcom/example/sgf/GLApplication;

    iget-object v2, v2, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iget-object v2, v2, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    invoke-direct {v1, v2}, Lcom/example/sgf/a;-><init>(Lcom/example/sgf/b;)V

    invoke-virtual {v0}, Lcom/example/sgf/a;->c()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/example/sgf/a;->a(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v1}, Lcom/example/sgf/a;->g()V

    iget-object v0, p0, Lcom/example/sgf/ab;->a:Lcom/example/sgf/GLApplication;

    invoke-virtual {v0}, Lcom/example/sgf/GLApplication;->async()V

    invoke-virtual {v1}, Lcom/example/sgf/a;->h()V

    invoke-virtual {v1}, Lcom/example/sgf/a;->m()V

    return-void
.end method
