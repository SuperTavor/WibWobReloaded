.class Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivityTimeSpentEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p3

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
