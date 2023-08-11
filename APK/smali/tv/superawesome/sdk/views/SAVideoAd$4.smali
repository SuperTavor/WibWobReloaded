.class Ltv/superawesome/sdk/views/SAVideoAd$4;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savideoplayer/SAVideoPlayerEventInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAVideoAd;

.field final synthetic val$listenerL:Ltv/superawesome/sdk/views/SAInterface;

.field final synthetic val$shouldAutomaticallyCloseAtEndL:Z

.field final synthetic val$shouldShowCloseButtonL:Z


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAVideoAd;ZLtv/superawesome/sdk/views/SAInterface;Z)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    iput-boolean p2, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$shouldShowCloseButtonL:Z

    iput-object p3, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$listenerL:Ltv/superawesome/sdk/views/SAInterface;

    iput-boolean p4, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$shouldAutomaticallyCloseAtEndL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saVideoPlayerDidReceiveEvent(Ltv/superawesome/lib/savideoplayer/SAVideoPlayerEvent;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-object v0, Ltv/superawesome/sdk/views/SAVideoAd$7;->$SwitchMap$tv$superawesome$lib$savideoplayer$SAVideoPlayerEvent:[I

    invoke-virtual {p1}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayerEvent;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$200(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$300(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v0

    iget-boolean v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$400(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v3}, Ltv/superawesome/sdk/views/SAVideoAd;->access$300(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$500(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v3, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$shouldShowCloseButtonL:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$400(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAVideoAd;->access$500(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$listenerL:Ltv/superawesome/sdk/views/SAInterface;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adShown:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTImpressionEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTStartEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTCreativeViewEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAVideoAd;->access$200(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->getVideoHolder()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Ltv/superawesome/sdk/views/SAVideoAd$4$1;

    invoke-direct {v2, p0}, Ltv/superawesome/sdk/views/SAVideoAd$4$1;-><init>(Ltv/superawesome/sdk/views/SAVideoAd$4;)V

    invoke-virtual {v0, v1, v2}, Ltv/superawesome/lib/saevents/SAEvents;->checkViewableStatusForVideo(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SAVideoAd;->access$200(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->getVideoPlayer()Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v3}, Ltv/superawesome/sdk/views/SAVideoAd;->access$200(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ltv/superawesome/lib/savideoplayer/SAVideoPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ltv/superawesome/lib/saevents/SAEvents;->registerVideoMoatEvent(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)Z

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTFirstQuartileEvent()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTMidpointEvent()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTThirdQuartileEvent()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTCompleteEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$listenerL:Ltv/superawesome/sdk/views/SAInterface;

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v2

    iget v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v3, Ltv/superawesome/sdk/views/SAEvent;->adEnded:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v2, v3}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$500(Ltv/superawesome/sdk/views/SAVideoAd;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$shouldAutomaticallyCloseAtEndL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$000(Ltv/superawesome/sdk/views/SAVideoAd;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$600(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerVASTErrorEvent()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->val$listenerL:Ltv/superawesome/sdk/views/SAInterface;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAVideoAd;->access$100(Ltv/superawesome/sdk/views/SAVideoAd;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v1

    iget v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAVideoAd$4;->this$0:Ltv/superawesome/sdk/views/SAVideoAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAVideoAd;->access$000(Ltv/superawesome/sdk/views/SAVideoAd;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
