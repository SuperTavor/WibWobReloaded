.class public Lcom/toast/android/analytics/unity/CampaignRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private adspaceName:Ljava/lang/String;

.field private animation:I

.field private lifeTime:I

.field result:I

.field private type:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    iput v1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    iput v1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->lifeTime:I

    iput-object p1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->type:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    return v0
.end method

.method public run()V
    .locals 4

    sget-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$1;->$SwitchMap$com$toast$android$analytics$unity$CampaignRunnable$TYPE:[I

    iget-object v1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->type:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-virtual {v1}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :pswitch_0
    iget v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->adspaceName:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/toast/android/analytics/GameAnalytics;->showCampaign(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->adspaceName:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    iget v3, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->lifeTime:I

    invoke-static {v0, v1, v2, v3}, Lcom/toast/android/analytics/GameAnalytics;->showCampaign(Ljava/lang/String;Landroid/app/Activity;II)I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->adspaceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/GameAnalytics;->hideCampaign(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->adspaceName:Ljava/lang/String;

    iget v1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    invoke-static {v0, v1}, Lcom/toast/android/analytics/GameAnalytics;->hideCampaign(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->result:I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAdspaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->adspaceName:Ljava/lang/String;

    return-void
.end method

.method public setAnimation(II)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->animation:I

    iput p2, p0, Lcom/toast/android/analytics/unity/CampaignRunnable;->lifeTime:I

    return-void
.end method
