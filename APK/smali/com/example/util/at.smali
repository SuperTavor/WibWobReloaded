.class final Lcom/example/util/at;
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
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->a(Lcom/example/util/YWPQRCodeHelper;)Lcom/example/util/bb;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->b(Lcom/example/util/YWPQRCodeHelper;)V

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/example/util/YWPQRCodeHelper;->a(Lcom/example/util/YWPQRCodeHelper;Z)Z

    :goto_0
    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/example/util/YWPQRCodeHelper;->b(Lcom/example/util/YWPQRCodeHelper;Z)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/util/YWPQRCodeHelper;->a(Lcom/example/util/YWPQRCodeHelper;I)V

    goto :goto_0
.end method
