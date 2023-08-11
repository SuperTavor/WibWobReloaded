.class Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;->this$2:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;->this$2:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$102(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;Z)Z

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] 3) Complete to call addItem from server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;->this$2:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1$1;->this$2:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2$1;->this$1:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$2;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
