.class final Lcom/example/util/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->d(Lcom/example/util/YWPQRCodeHelper;)V

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->a(Lcom/example/util/YWPQRCodeHelper;Z)Z

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->e(Lcom/example/util/YWPQRCodeHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
