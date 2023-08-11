.class Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;)V
    .locals 4

    const-string v0, "MycardPgPaymentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MyCard] Prepare result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "authCode"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getJsonInfos(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MycardPgPaymentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MyCard] mycard  authCode = \'"

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

    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v1, "MycardPgPaymentActivity"

    const-string v2, "[MyCard] 2-1) Success to prepare from server"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    iget-object v2, v2, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "authCode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x4d2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "[MyCard] 2-2) Failed to get authcode from server. "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "[MyCard] 2-2) Fail to prepare from server"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
