.class final Lcom/hangame/hsp/auth/login/HSPLoginService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;

.field final synthetic val$mappingType:Lcom/hangame/hsp/HSPMappingType;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMappingType;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$1;->val$mappingType:Lcom/hangame/hsp/HSPMappingType;

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$1;->val$mappingType:Lcom/hangame/hsp/HSPMappingType;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->mappingToAccount(Lcom/hangame/hsp/HSPMappingType;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
