.class Lcom/hangame/hsp/ui/MainViewContainer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/MainViewContainer;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/MainViewContainer$7;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    iput-object p2, p0, Lcom/hangame/hsp/ui/MainViewContainer$7;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/ui/MainViewContainer;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTitle() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/MainViewContainer$7;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer$7;->this$0:Lcom/hangame/hsp/ui/MainViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->access$1000(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/TopBarViewContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer$7;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/TopBarViewContainer;->setTitle(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
