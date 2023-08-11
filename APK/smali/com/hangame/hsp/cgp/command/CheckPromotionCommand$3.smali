.class Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

.field final synthetic val$cgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

.field final synthetic val$context:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;Ljava/lang/Object;Lcom/hangame/hsp/cgp/response/CGPResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$context:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$cgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    const-string v0, "Promotion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$100(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$100(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$context:Ljava/lang/Object;

    iget-object v3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$cgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    sget-object v4, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCurPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionState;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$200(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$context:Ljava/lang/Object;

    iget-object v3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;->val$cgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getPromotionStatusMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V

    goto :goto_0
.end method
