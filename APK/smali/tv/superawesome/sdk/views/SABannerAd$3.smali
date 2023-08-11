.class Ltv/superawesome/sdk/views/SABannerAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sawebplayer/SAWebPlayerEventInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SABannerAd;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SABannerAd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    iput-object p2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saWebPlayerDidReceiveEvent(Ltv/superawesome/lib/sawebplayer/SAWebPlayerEvent;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Ltv/superawesome/sdk/views/SABannerAd$4;->$SwitchMap$tv$superawesome$lib$sawebplayer$SAWebPlayerEvent:[I

    invoke-virtual {p1}, Ltv/superawesome/lib/sawebplayer/SAWebPlayerEvent;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$500(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ltv/superawesome/lib/saevents/SAEvents;->registerDisplayMoatEvent(Landroid/app/Activity;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    const-string v2, "_MOAT_"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v2

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$500(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    new-instance v2, Ltv/superawesome/sdk/views/SABannerAd$3$1;

    invoke-direct {v2, p0}, Ltv/superawesome/sdk/views/SABannerAd$3$1;-><init>(Ltv/superawesome/sdk/views/SABannerAd$3;)V

    invoke-virtual {v0, v1, v2}, Ltv/superawesome/lib/saevents/SAEvents;->checkViewableStatusForDisplay(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$200(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adShown:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->getHolder()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v0

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ltv/superawesome/sdk/views/SABannerAd;->access$702(Ltv/superawesome/sdk/views/SABannerAd;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {}, Ltv/superawesome/lib/sautils/SAImageUtils;->createPadlockBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v4, 0x42a60000    # 83.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/high16 v5, 0x41f80000    # 31.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v0

    iget-boolean v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Ltv/superawesome/sdk/views/SABannerAd$3$2;

    invoke-direct {v1, p0}, Ltv/superawesome/sdk/views/SABannerAd$3$2;-><init>(Ltv/superawesome/sdk/views/SABannerAd$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->getHolder()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$700(Ltv/superawesome/sdk/views/SABannerAd;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$400(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sawebplayer/SAWebPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/sawebplayer/SAWebPlayer;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$200(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$600(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz p2, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$800(Ltv/superawesome/sdk/views/SABannerAd;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    new-instance v2, Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v3}, Ltv/superawesome/sdk/views/SABannerAd;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p2}, Ltv/superawesome/sdk/views/SAParentalGate;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v0, v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$902(Ltv/superawesome/sdk/views/SABannerAd;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$900(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGate;->setListener(Ltv/superawesome/sdk/views/SAParentalGateInterface;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$900(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {v0, p2}, Ltv/superawesome/sdk/views/SABannerAd;->click(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
