.class Lcom/example/sgf/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/example/sgf/n;


# direct methods
.method private constructor <init>(Lcom/example/sgf/n;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/r;->a:Lcom/example/sgf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/sgf/n;Lcom/example/sgf/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/sgf/r;-><init>(Lcom/example/sgf/n;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/r;->a:Lcom/example/sgf/n;

    invoke-static {v0, p1, p3, p4}, Lcom/example/sgf/n;->a(Lcom/example/sgf/n;Ljava/lang/Object;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/r;->a:Lcom/example/sgf/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/sgf/n;->a(Z)V

    iget-object v0, p0, Lcom/example/sgf/r;->a:Lcom/example/sgf/n;

    invoke-static {v0}, Lcom/example/sgf/n;->a(Lcom/example/sgf/n;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/r;->a:Lcom/example/sgf/n;

    invoke-static {v0}, Lcom/example/sgf/n;->b(Lcom/example/sgf/n;)V

    return-void
.end method
