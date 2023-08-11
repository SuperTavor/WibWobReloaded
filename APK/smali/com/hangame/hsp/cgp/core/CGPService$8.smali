.class final Lcom/hangame/hsp/cgp/core/CGPService$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

.field final synthetic val$result:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$result:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$callback:Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/cgp/core/CGPService$8$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService$8$1;-><init>(Lcom/hangame/hsp/cgp/core/CGPService$8;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
