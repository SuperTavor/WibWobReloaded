.class Ltv/superawesome/sdk/views/SABannerAd$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Ltv/superawesome/sdk/views/SABannerAd$3;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SABannerAd$3;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd$3$2;->this$1:Ltv/superawesome/sdk/views/SABannerAd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://ads.superawesome.tv/v2/safead"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3$2;->this$1:Ltv/superawesome/sdk/views/SABannerAd$3;

    iget-object v1, v1, Ltv/superawesome/sdk/views/SABannerAd$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
