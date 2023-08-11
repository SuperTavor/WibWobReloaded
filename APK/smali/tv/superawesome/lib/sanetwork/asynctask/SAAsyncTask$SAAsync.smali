.class public Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$SAAsync;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$SAAsync;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    const-string v0, "SuperAwesome"

    const-string v1, "[Fatal] Receiver for AsyncTask Intent is null. Quitting intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "hash"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "SuperAwesome"

    const-string v1, "[Fatal] Hash for AsyncTask Intent is null. Quitting intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;

    if-nez v1, :cond_2

    const-string v0, "SuperAwesome"

    const-string v1, "[Fatal] Persister for AsyncTask Intent is null. Quitting intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, v1, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    if-eqz v3, :cond_3

    iget-object v3, v1, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    invoke-interface {v3}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;->taskToExecute()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "hash"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
