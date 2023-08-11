.class final Lcom/toast/android/analytics/gcm/GcmManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/gcm/GcmManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/toast/android/analytics/gcm/GcmManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "push_token"

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "push_sender_id"

    invoke-virtual {v1, v2}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    const-string v2, "push_token"

    invoke-virtual {v1, v2, v0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->tracePushToken(Ljava/lang/String;)I

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setDeviceToken(Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/gcm/GcmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token Resitered ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
