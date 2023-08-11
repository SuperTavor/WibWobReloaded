.class final Lcom/example/util/am;
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

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->e(Lcom/example/util/YWPMyPuniHelper;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/example/util/an;

    invoke-direct {v1, p0}, Lcom/example/util/an;-><init>(Lcom/example/util/am;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
