.class Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;
.super Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/toast/android/analytics/PromotionActivity;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/PromotionActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public closeWebView()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;->this$0:Lcom/toast/android/analytics/PromotionActivity;

    invoke-static {v0}, Lcom/toast/android/analytics/PromotionActivity;->access$000(Lcom/toast/android/analytics/PromotionActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public resultTost(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/toast/android/analytics/PromotionActivity$WebAppInterface;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
