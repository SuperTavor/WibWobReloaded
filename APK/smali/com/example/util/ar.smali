.class final Lcom/example/util/ar;
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
    .locals 1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->a(Lcom/example/util/YWPMyPuniHelper;)Lcom/example/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/c;->b()V

    return-void
.end method
