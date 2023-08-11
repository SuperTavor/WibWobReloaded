.class Lcom/example/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lcom/example/util/c;


# direct methods
.method constructor <init>(Lcom/example/util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/f;->a:Lcom/example/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/example/util/f;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/f;->a:Lcom/example/util/c;

    invoke-static {v0}, Lcom/example/util/c;->b(Lcom/example/util/c;)Lcom/example/util/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/example/util/h;->a(Z)V

    :cond_0
    return-void
.end method
