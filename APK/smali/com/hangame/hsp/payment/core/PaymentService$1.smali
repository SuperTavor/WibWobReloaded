.class final Lcom/hangame/hsp/payment/core/PaymentService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/PaymentService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLogin()V
    .locals 2

    const-string v0, "PaymentService"

    const-string v1, "Payment restoreTransaction started."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/PaymentService$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager;->restoreTransaction(Landroid/content/Context;)Z

    const-string v0, "PaymentService"

    const-string v1, "Payment restoreTransaction ended."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->access$002(Z)Z

    return-void
.end method
