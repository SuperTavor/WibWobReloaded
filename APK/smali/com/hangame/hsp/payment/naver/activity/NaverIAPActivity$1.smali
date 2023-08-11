.class Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$1;->this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity$1;->this$0:Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;->access$000(Lcom/hangame/hsp/payment/naver/activity/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
