.class Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    const-string v1, "CGPSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$result:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;->onResult(Lcom/hangame/hsp/HSPResult;Ljava/util/HashMap;)V

    const-string v0, "INFO"

    const-string v1, "HSP_GET_ADID"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to get AdId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPBip;->reportStabilityIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
