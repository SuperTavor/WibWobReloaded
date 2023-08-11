.class Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;)V
    .locals 3

    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "[MyCard] 3) Complete to call addItem from server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$100(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
