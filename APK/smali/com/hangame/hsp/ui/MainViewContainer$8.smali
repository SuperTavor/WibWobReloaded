.class Lcom/hangame/hsp/ui/MainViewContainer$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/MainViewContainer;

.field final synthetic val$topBarButtonView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/MainViewContainer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/MainViewContainer$8;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    iput-object p2, p0, Lcom/hangame/hsp/ui/MainViewContainer$8;->val$topBarButtonView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/MainViewContainer;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "setTopBarButtonView() : "

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$8;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->access$1000(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/TopBarViewContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer$8;->val$topBarButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/TopBarViewContainer;->setTopBarButtonView(Landroid/view/View;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
