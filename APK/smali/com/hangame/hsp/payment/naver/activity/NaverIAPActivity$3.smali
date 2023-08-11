.class Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;

.field final synthetic val$price:I

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$txId:J


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$productId:Ljava/lang/String;

    iput p3, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$price:I

    iput-wide p4, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$txId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;

    iget-object v1, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$productId:Ljava/lang/String;

    iget v2, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$price:I

    iget-wide v4, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$3;->val$txId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;->requestPayment(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
