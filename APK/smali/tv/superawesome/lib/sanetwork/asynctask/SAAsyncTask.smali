.class public Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;
.super Ljava/lang/Object;


# static fields
.field private static final INTENT_HASH_KEY:Ljava/lang/String; = "hash"

.field private static final INTENT_RECEIVER_KEY:Ljava/lang/String; = "receiver"

.field private static final STATUS_FINISHED:I = 0x1

.field private static final TASK_KEY:Ljava/lang/String; = "asyncTask_"

.field private static persisterHashMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->persisterHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTask_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1000c

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;

    invoke-direct {v1, p2}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;-><init>(Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;)V

    sget-object v2, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->persisterHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SYNC"

    const/4 v3, 0x0

    const-class v4, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$SAAsync;

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "hash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "receiver"

    new-instance v2, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask$1;-><init>(Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;->onError()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;->persisterHashMap:Ljava/util/HashMap;

    return-object v0
.end method
