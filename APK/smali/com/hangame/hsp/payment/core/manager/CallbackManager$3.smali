.class final Lcom/hangame/hsp/payment/core/manager/CallbackManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    return-void
.end method
