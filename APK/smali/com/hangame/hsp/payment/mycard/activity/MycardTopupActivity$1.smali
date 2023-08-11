.class Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "MycardTopupActivity"

    const-string v1, "[MyCard] Payment was canceled by user."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;->cancelPayment()V

    return-void
.end method
