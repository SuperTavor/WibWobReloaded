.class Lcom/hangame/hsp/ui/MainViewContainer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/MainViewContainer;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/MainViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/MainViewContainer$4;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

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

    const-string v2, "showGnb()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$4;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->access$900(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/GnbViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$4;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->access$700(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$4;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->access$800(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
