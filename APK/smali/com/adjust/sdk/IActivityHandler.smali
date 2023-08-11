.class public interface abstract Lcom/adjust/sdk/IActivityHandler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
.end method

.method public abstract init(Lcom/adjust/sdk/AdjustConfig;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V
.end method

.method public abstract launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V
.end method

.method public abstract launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract readOpenUrl(Landroid/net/Uri;J)V
.end method

.method public abstract sendReferrer(Ljava/lang/String;J)V
.end method

.method public abstract setAskingAttribution(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOfflineMode(Z)V
.end method

.method public abstract trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
.end method

.method public abstract updateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z
.end method
