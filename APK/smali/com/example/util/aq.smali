.class final Lcom/example/util/aq;
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

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->d(Lcom/example/util/YWPMyPuniHelper;)V

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;Z)Z

    return-void
.end method
