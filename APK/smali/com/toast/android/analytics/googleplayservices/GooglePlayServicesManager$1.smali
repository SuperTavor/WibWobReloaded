.class final Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$listener:Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$listener:Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "GooglePlayServicesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** device id from google api ==>   id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLimitAdTrackingEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCanExecutePromotion:Z

    const-string v0, ""

    if-nez p1, :cond_2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GooglePlayServicesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Advertising ID (using UUID) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->UUID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sput-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    :goto_1
    sget-boolean v3, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCanExecutePromotion:Z

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateUserAdvertisingId(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    sput-object p1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setDeviceIdCollectionComplete()V

    iget-object v0, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$listener:Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$listener:Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;->onComplete()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->ADVERTISE_ID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sput-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/toast/android/analytics/common/config/Settings;->updateUserAdvertisingId(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    iget-object v3, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, v2}, Lcom/toast/android/analytics/common/config/Settings;->updateUserAdvertisingId(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2}, Lcom/toast/android/analytics/common/config/Settings;->updateUserAdvertisingId(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2
.end method
