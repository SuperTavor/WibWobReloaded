.class Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

.field final synthetic val$code:I

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    iput p2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$code:I

    iput-object p3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Promotion"

    iget v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$code:I

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$100(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$100(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$context:Ljava/lang/Object;

    sget-object v3, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-interface {v1, v0, v2, v3}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v3, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v3, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v3, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->this$0:Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    invoke-static {v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->access$200(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;->val$context:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2, v3}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V

    goto :goto_0
.end method
