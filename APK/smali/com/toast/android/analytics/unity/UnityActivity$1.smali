.class final Lcom/toast/android/analytics/unity/UnityActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/GameAnalytics$CampaignListener;


# instance fields
.field final synthetic val$objectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCampaignClick(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v1, "OnCampaignListener_OnCampaignClick"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCampaignLoadFail(Ljava/lang/String;Lcom/toast/android/analytics/exception/CampaignException;)V
    .locals 4

    const-string v0, "%s##%d##%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/toast/android/analytics/exception/CampaignException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/toast/android/analytics/exception/CampaignException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v2, "OnCampaignListener_OnCampaignLoadFail"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCampaignLoadSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v1, "OnCampaignListener_OnCampaignLoadSuccess"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCampaignVisibilityChanged(Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "%s##%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    if-ne p2, v3, :cond_0

    const-string v0, "true"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v2, "OnCampaignListener_OnCampaignVisibilityChanged"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public onMissionComplete(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "##"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "UnityActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMissionComplete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v2, "OnCampaignListener_OnMissionCompleted"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public onPromotionVisibilityChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "true"

    :goto_0
    iget-object v1, p0, Lcom/toast/android/analytics/unity/UnityActivity$1;->val$objectName:Ljava/lang/String;

    const-string v2, "OnCampaignListener_OnPromotionVisibilityChanged"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
