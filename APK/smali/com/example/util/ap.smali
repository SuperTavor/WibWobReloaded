.class Lcom/example/util/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/util/ao;


# direct methods
.method constructor <init>(Lcom/example/util/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/ap;->a:Lcom/example/util/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->l()Lcom/example/util/YWPMyPuniHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPMyPuniHelper;->b(Lcom/example/util/YWPMyPuniHelper;)V

    return-void
.end method
