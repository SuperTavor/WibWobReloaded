.class Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "MycardPgPaymentActivity"

    const-string v1, "[MyCard] Payment was canceled by CloseButtonPressed."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgPaymentActivity;->cancelPayment()V

    return-void
.end method
