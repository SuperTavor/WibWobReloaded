.class Lcom/toast/android/analytics/common/job/WorkerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/common/job/WorkerThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/common/job/WorkerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/common/job/WorkerThread$1;->this$0:Lcom/toast/android/analytics/common/job/WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "WorkerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start run loop ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/common/job/WorkerThread$1;->this$0:Lcom/toast/android/analytics/common/job/WorkerThread;

    iget-object v2, v2, Lcom/toast/android/analytics/common/job/WorkerThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/job/WorkerThread$1;->this$0:Lcom/toast/android/analytics/common/job/WorkerThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/job/WorkerThread;->execute()V

    return-void
.end method
