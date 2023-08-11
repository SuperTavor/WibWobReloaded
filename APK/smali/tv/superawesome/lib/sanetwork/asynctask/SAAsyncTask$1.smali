.class Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$1;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$1;->this$0:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "hash"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SuperAwesome"

    const-string v1, "[Fatal] Hash for AsyncTask Receiver is null. Quitting intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;

    if-nez v0, :cond_1

    const-string v0, "SuperAwesome"

    const-string v1, "[Fatal] Persister for AsyncTask Receiver is null. Quitting intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object v2, v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    if-eqz v2, :cond_2

    iget-object v2, v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    iget-object v0, v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->result:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;->onFinish(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-static {}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    invoke-interface {v0}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;->onError()V

    goto :goto_1
.end method
