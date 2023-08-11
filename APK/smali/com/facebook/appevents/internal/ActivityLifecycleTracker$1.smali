.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$000(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsMainThread()V

    invoke-static {p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->onContextStop()V

    return-void
.end method
