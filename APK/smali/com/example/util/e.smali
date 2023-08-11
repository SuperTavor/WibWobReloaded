.class Lcom/example/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/example/util/c;


# direct methods
.method constructor <init>(Lcom/example/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/e;->a:Lcom/example/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/example/util/e;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/e;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/example/util/h;->a([B)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/example/util/e;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->a(Lcom/example/util/c;)V

    goto :goto_0
.end method
