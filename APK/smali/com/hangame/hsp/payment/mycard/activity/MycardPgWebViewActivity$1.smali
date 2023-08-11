.class Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$1;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->cancelPayment()V

    return-void
.end method
