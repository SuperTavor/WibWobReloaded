.class final Lcom/hangame/hsp/payment/core/util/PaymentUtil$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
