.class Ltv/superawesome/sdk/views/SAVideoAd$5;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savideoplayer/SAVideoPlayerClickInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAVideoAd;

.field final synthetic val$isParentalGateEnabledL:Z


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAVideoAd;Z)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    iput-boolean p2, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->val$isParentalGateEnabledL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v0

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v0

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->val$isParentalGateEnabledL:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    new-instance v2, Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ltv/superawesome/sdk/views/SAParentalGate;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v2}, Ltv/superawesome/sdk/views/SAVideoAd;->access$702(Ltv/superawesome/sdk/views/SAVideoAd;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$700(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-virtual {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGate;->setListener(Ltv/superawesome/sdk/views/SAParentalGateInterface;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$700(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->getVASTClickThroughEvent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$5;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-virtual {v1, v0}, Ltv/superawesome/sdk/views/SAVideoAd;->click(Ljava/lang/String;)V

    goto :goto_1
.end method
