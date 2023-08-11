.class public final Lcom/hangame/hsp/push/HSPPushManager;
.super Ljava/lang/Object;


# static fields
.field static final KEY_APP_NAME:Ljava/lang/String; = "AppName"

.field static final KEY_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field static final KEY_LAUNCHER_ACTION:Ljava/lang/String; = "LauncherAction"

.field static final KEY_LIGHTHOUSE_URL:Ljava/lang/String; = "lightHouseUrl"

.field static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field static final KEY_NEW_TOKEN:Ljava/lang/String; = "NewToken"

.field static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field public static final KEY_ORG_TOKEN:Ljava/lang/String; = "OrgToken"

.field static final KEY_PUSH_BADGE:Ljava/lang/String; = "badge"

.field static final KEY_PUSH_BODY:Ljava/lang/String; = "body"

.field static final KEY_PUSH_CONTENT:Ljava/lang/String; = "content"

.field static final KEY_PUSH_ID:Ljava/lang/String; = "id"

.field static final KEY_PUSH_SOUND:Ljava/lang/String; = "sound"

.field static final KEY_SERVICE_ID:Ljava/lang/String; = "ServiceId"

.field static final KEY_TCP_TIMEOUT:Ljava/lang/String; = "20"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "PushService"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/hangame/hsp/push/HSPPushManager;


# instance fields
.field private mLauncherAction:Ljava/lang/String;

.field private final mReceivePushNotificationListenerSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hangame/hsp/push/HSPPushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/push/HSPPushManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mLauncherAction:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hangame/hsp/push/HSPPushManager;
    .locals 2

    const-class v1, Lcom/hangame/hsp/push/HSPPushManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->sInstance:Lcom/hangame/hsp/push/HSPPushManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/push/HSPPushManager;

    invoke-direct {v0}, Lcom/hangame/hsp/push/HSPPushManager;-><init>()V

    sput-object v0, Lcom/hangame/hsp/push/HSPPushManager;->sInstance:Lcom/hangame/hsp/push/HSPPushManager;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->sInstance:Lcom/hangame/hsp/push/HSPPushManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isForeground(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    const-string v1, "bForeground = true"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addPushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    const-string v1, "addPushNotificationReceiveListener"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDefaultAlertIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultAlertIntent"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hangame.hsp.action.PUSH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method getLaunchIntentForPush(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchIntentForPush mLauncherAction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/push/HSPPushManager;->mLauncherAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mLauncherAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hangame/hsp/push/HSPPushManager;->mLauncherAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method notifyPushNotificationEvent(Ljava/util/Map;)V
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;

    invoke-interface {v0, p1}, Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;->onPushNotificationReceive(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method registerLauncher(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    iput-object p2, p0, Lcom/hangame/hsp/push/HSPPushManager;->mLauncherAction:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/push/HSPPushManager$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/push/HSPPushManager$1;-><init>(Lcom/hangame/hsp/push/HSPPushManager;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removePushNotificationReceiveListener(Lcom/hangame/hsp/HSPMessage$HSPReceivePushNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    const-string v1, "removePushNotificationReceiveListener"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager;->mReceivePushNotificationListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestSubscription(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSubscribe("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/push/PushBroker;->getInstance()Lcom/hangame/hsp/push/PushBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/push/PushBroker;->requestSubscription(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public requestUnsubscription(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager;->TAG:Ljava/lang/String;

    const-string v1, "requestUnsubscribe"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/push/PushBroker;->getInstance()Lcom/hangame/hsp/push/PushBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/push/PushBroker;->requestUnsubscription(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
