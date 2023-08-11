.class final Lcom/example/sgf/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/example/sgf/h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x400

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    iget-boolean v0, p0, Lcom/example/sgf/h;->a:Z

    invoke-static {v0}, Lcom/example/sgf/MainActivity;->a(Z)Z

    iget-boolean v0, p0, Lcom/example/sgf/h;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/sgf/MainActivity;->a(Lcom/example/sgf/MainActivity;I)I

    goto :goto_0
.end method
