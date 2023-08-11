.class Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;
.super Ljava/lang/Object;


# instance fields
.field listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->result:Ljava/lang/Object;

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskPersister;->listener:Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;

    return-void
.end method
