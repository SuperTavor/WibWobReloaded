.class Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] 2-1) Success to prepare from server"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] 3) Call addItem to server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "hsp.payment.msg.processing"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/mycard/command/MycardAddItemCommand;

    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v1, v1, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v1}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;)V

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/mycard/command/MycardAddItemCommand;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] 2-2) Fail to prepare from server"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
