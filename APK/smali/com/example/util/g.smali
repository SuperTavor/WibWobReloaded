.class Lcom/example/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lcom/example/util/c;


# direct methods
.method constructor <init>(Lcom/example/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/example/util/h;->a(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    iget-boolean v0, v0, Lcom/example/util/c;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->c(Lcom/example/util/c;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v2}, Lcom/example/util/c;->d(Lcom/example/util/c;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v2}, Lcom/example/util/c;->d(Lcom/example/util/c;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/example/util/g;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->a(Lcom/example/util/c;)V

    goto :goto_0
.end method
