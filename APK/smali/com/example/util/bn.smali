.class Lcom/example/util/bn;
.super Ljava/util/TimerTask;


# instance fields
.field a:Lcom/example/util/YWPWebView2;

.field b:Ljava/util/Timer;

.field final synthetic c:Lcom/example/util/YWPWebView2;


# direct methods
.method public constructor <init>(Lcom/example/util/YWPWebView2;Lcom/example/util/YWPWebView2;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/bn;->c:Lcom/example/util/YWPWebView2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p3, p0, Lcom/example/util/bn;->b:Ljava/util/Timer;

    iput-object p2, p0, Lcom/example/util/bn;->a:Lcom/example/util/YWPWebView2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/example/util/bo;

    invoke-direct {v1, p0}, Lcom/example/util/bo;-><init>(Lcom/example/util/bn;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
