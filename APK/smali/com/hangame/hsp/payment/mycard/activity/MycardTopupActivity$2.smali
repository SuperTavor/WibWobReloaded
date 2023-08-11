.class Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] Submit button is pressed.."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->val$view:Landroid/view/View;

    const-string v1, "hsp.payment.mycard.topup.inputid"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] ID is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "MYCARD ID is a required field."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->val$view:Landroid/view/View;

    const-string v2, "hsp.payment.mycard.topup.inputpwd"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] PWD is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "MYCARD Password is a required field."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v2, "MycardTopupActivity"

    const-string v3, "[MyCard] 1) Check the input value.. OK"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "hsp.payment.msg.processing"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "MycardTopupActivity"

    const-string v3, "[MyCard] 2) Call prepare to server."

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"cardId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", \"cardPwd\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/mycard/command/MycardPrepareCommand;

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/hangame/hsp/payment/mycard/command/MycardPrepareCommand;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MycardTopupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MyCard] 2-3) Prepare exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
