.class final Lcom/hangame/hsp/cgp/core/CGPService$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

.field final synthetic val$result:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$7;->val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/core/CGPService$7;->val$result:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$7;->val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    const-string v1, "CGPSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$7;->val$result:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;->onResult(Lcom/hangame/hsp/HSPResult;Ljava/util/HashMap;)V

    return-void
.end method
