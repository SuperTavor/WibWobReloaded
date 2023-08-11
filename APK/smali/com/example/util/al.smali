.class final Lcom/example/util/al;
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

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->d(Lcom/example/util/YWPMyPuniHelper;)V

    return-void
.end method
