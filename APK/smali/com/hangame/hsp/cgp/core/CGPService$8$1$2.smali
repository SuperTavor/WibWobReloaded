.class Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const v3, 0x90004

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    const-string v1, "CGPSERVICE"

    invoke-static {v1, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$result:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;->onResult(Lcom/hangame/hsp/HSPResult;Ljava/util/HashMap;)V

    const-string v0, "INFO"

    const-string v1, "HSP_GET_ADID"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "There is a problem to get AdId while we use Google Play Service SDK"

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
