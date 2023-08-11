.class Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    invoke-static {v1}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;->access$000(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "hsp.payment.title.dialog.purchase"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$bodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "hsp.payment.btn.confirm"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;-><init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "hsp.payment.btn.no"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$1;-><init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
