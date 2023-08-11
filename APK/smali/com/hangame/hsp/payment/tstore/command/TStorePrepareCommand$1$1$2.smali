.class Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$hspUri:Lcom/hangame/hsp/ui/HSPUiUri;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$2;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    iget-object v3, v3, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;

    iget-object v3, v3, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$productName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;->access$100(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;Lcom/hangame/hsp/ui/HSPUiUri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
