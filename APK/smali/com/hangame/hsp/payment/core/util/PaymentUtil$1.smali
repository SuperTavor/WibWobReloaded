.class final Lcom/hangame/hsp/payment/core/util/PaymentUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$1;->val$message:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PaymentUtil"

    const-string v2, "ProgressDialog Showing Error "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
