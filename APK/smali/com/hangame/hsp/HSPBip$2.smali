.class final Lcom/hangame/hsp/HSPBip$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPBip$2;->val$callback:Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPBip$2;->val$callback:Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPBip$2;->val$callback:Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPBip$HSPReportInflowStepCB;->onInflowStepReport(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    return-void
.end method
