.class Lcom/hangame/hsp/cgp/core/CGPService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/core/CGPService;

.field final synthetic val$callback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$2;->this$0:Lcom/hangame/hsp/cgp/core/CGPService;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$callback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    iput-object p3, p0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService$2$1;-><init>(Lcom/hangame/hsp/cgp/core/CGPService$2;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
