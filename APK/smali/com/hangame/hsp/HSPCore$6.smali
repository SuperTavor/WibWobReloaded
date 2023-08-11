.class Lcom/hangame/hsp/HSPCore$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPCore;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPCore$HSPSuspendCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore;Lcom/hangame/hsp/HSPCore$HSPSuspendCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$6;->this$0:Lcom/hangame/hsp/HSPCore;

    iput-object p2, p0, Lcom/hangame/hsp/HSPCore$6;->val$callback:Lcom/hangame/hsp/HSPCore$HSPSuspendCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$6;->val$callback:Lcom/hangame/hsp/HSPCore$HSPSuspendCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$6;->val$callback:Lcom/hangame/hsp/HSPCore$HSPSuspendCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPCore$HSPSuspendCB;->onSuspend(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    return-void
.end method
