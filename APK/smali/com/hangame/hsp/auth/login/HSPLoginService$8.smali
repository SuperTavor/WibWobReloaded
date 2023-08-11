.class final Lcom/hangame/hsp/auth/login/HSPLoginService$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$8;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->deviceLogin()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$8;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v1, v2, v0, v2}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    return-void
.end method
