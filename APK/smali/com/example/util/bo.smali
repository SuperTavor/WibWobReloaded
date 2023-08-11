.class Lcom/example/util/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/util/bn;


# direct methods
.method constructor <init>(Lcom/example/util/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/bo;->a:Lcom/example/util/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/bo;->a:Lcom/example/util/bn;

    iget-object v0, v0, Lcom/example/util/bn;->a:Lcom/example/util/YWPWebView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/util/YWPWebView2;->a(Lcom/example/util/YWPWebView2;I)V

    iget-object v0, p0, Lcom/example/util/bo;->a:Lcom/example/util/bn;

    iget-object v0, v0, Lcom/example/util/bn;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
