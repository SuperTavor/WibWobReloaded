.class final Lcom/example/util/as;
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

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/example/util/YWPMyPuniHelper;->f(Lcom/example/util/YWPMyPuniHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/util/c;->setCameraFront(Z)V

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/c;->getMinBright()I

    move-result v1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/c;->getMaxBright()I

    move-result v2

    const/4 v0, 0x0

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->b(F)V

    :goto_1
    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->b(F)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    sub-int v0, v2, v1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v2

    invoke-static {v2}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/util/c;->getCurrentBrightness()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    div-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    sub-int v0, v2, v1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v2

    invoke-static {v2}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/util/c;->getCurrentBrightness()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v1, v2, v1

    div-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_1
.end method
