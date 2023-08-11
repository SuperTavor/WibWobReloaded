.class public Lcom/adjust/sdk/AdjustConfig;
.super Ljava/lang/Object;


# static fields
.field public static final ENVIRONMENT_PRODUCTION:Ljava/lang/String; = "production"

.field public static final ENVIRONMENT_SANDBOX:Ljava/lang/String; = "sandbox"


# instance fields
.field appToken:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deepLinkComponent:Ljava/lang/Class;

.field defaultTracker:Ljava/lang/String;

.field deviceKnown:Ljava/lang/Boolean;

.field environment:Ljava/lang/String;

.field eventBufferingEnabled:Z

.field logLevel:Lcom/adjust/sdk/LogLevel;

.field onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

.field onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

.field onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

.field onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

.field onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

.field onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

.field processName:Ljava/lang/String;

.field referrer:Ljava/lang/String;

.field referrerClickTime:J

.field sdkPrefix:Ljava/lang/String;

.field sendInBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/AdjustConfig;->isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    sget-object v0, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    goto :goto_0
.end method

.method private static checkAppToken(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v1, "Missing App Token"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const-string v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static checkContext(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    if-nez p0, :cond_0

    const-string v2, "Missing context"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "android.permission.INTERNET"

    invoke-static {p0, v2}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Missing permission: INTERNET"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkEnvironment(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v1, "Missing environment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v3, "sandbox"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "production"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "Unknown environment \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/adjust/sdk/AdjustConfig;->checkAppToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p3}, Lcom/adjust/sdk/AdjustConfig;->checkEnvironment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/adjust/sdk/AdjustConfig;->checkContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasAttributionChangedListener()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasListener()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeepLinkComponent(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    return-void
.end method

.method public setDefaultTracker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    return-void
.end method

.method public setDeviceKnown(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    return-void
.end method

.method public setEventBufferingEnabled(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    goto :goto_0
.end method

.method public setLogLevel(Lcom/adjust/sdk/LogLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    return-void
.end method

.method public setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    return-void
.end method

.method public setOnDeeplinkResponseListener(Lcom/adjust/sdk/OnDeeplinkResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    return-void
.end method

.method public setOnEventTrackingFailedListener(Lcom/adjust/sdk/OnEventTrackingFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    return-void
.end method

.method public setOnEventTrackingSucceededListener(Lcom/adjust/sdk/OnEventTrackingSucceededListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    return-void
.end method

.method public setOnSessionTrackingFailedListener(Lcom/adjust/sdk/OnSessionTrackingFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    return-void
.end method

.method public setOnSessionTrackingSucceededListener(Lcom/adjust/sdk/OnSessionTrackingSucceededListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSendInBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    return-void
.end method
