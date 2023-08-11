.class Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

.field final synthetic val$keyValue:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->val$keyValue:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "hsp.payment.msg.processing"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"myCardServiceId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->val$keyValue:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "[MyCard] 2) Call prepare to server."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MycardPgPaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MyCard] mycardData = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/payment/mycard/command/MycardPrepareCommand;

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/hangame/hsp/payment/mycard/command/MycardPrepareCommand;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgPaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MyCard] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
