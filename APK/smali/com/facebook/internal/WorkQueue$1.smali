.class Lcom/facebook/internal/WorkQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WorkQueue;

.field final synthetic val$node:Lcom/facebook/internal/WorkQueue$WorkNode;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {v0}, Lcom/facebook/internal/WorkQueue$WorkNode;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-static {v0, v1}, Lcom/facebook/internal/WorkQueue;->access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$1;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$1;->val$node:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    throw v0
.end method
