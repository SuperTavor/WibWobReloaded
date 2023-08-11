.class public final Lcom/hangame/hsp/core/HSPInitializer;
.super Ljava/lang/Object;


# static fields
.field private static final INIT_METHOD_NAME:Ljava/lang/String; = "initialize"

.field private static final TAG:Ljava/lang/String; = "HSPInitializer"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addonInitialize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.hangame.hsp.payment.core.PaymentService"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.hangame.hsp.itemdelivery.core.ItemDeliveryService"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.hangame.hsp.sns.core.SnsService"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.hangame.hsp.referrer.InstallReceiver"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static checkAndroidManifest(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v0, "HSPInitializer"

    const-string v2, "Check SDK Version"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need to use higher than SDK version 8"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.INTERNET"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInitializer;->checkPermissions(Ljava/util/List;)V

    const-string v0, "HSPInitializer"

    const-string v2, "Check Activities"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "HSPInitializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found Activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "HSPInitializer"

    const-string v4, "Check Services"

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "HSPInitializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "HSPInitializer"

    const-string v3, "Check Receivers"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "HSPInitializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check Receiver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found Receiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public static checkPermissions(Ljava/util/List;)V
    .locals 7

    const-string v0, "HSPInitializer"

    const-string v1, "Check permissions"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "HSPInitializer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const-string v4, "HSPInitializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check permission : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " protection level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not granted permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HSPInitializer"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/ui/ResourceUtil;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPVersion;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isRealLaunchingZone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPInitializer;->checkAndroidManifest(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->initialize()V

    return-void
.end method

.method private static invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "HSPInitializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeInitMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initialize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "HSPInitializer"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static lncInitialize()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInitializer;->viewInitialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.hangame.hsp.auth.login.line.LineLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/hangame/hsp/core/HSPInitializer;->addonInitialize(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.hangame.hsp.auth.login.kakao.KakaoLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.hangame.hsp.auth.login.globalcngame.GlobalCnGameLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "91"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.hangame.hsp.auth.login.jiuhao.JiuhaoLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.hangame.hsp.auth.login.qihoo.QihooLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.hangame.hsp.auth.login.qihoo.QihooLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGame()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.hangame.hsp.auth.login.globalgame.GlobalGameLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGreeGame()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.hangame.hsp.auth.login.gree.GreeLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "band"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "com.hangame.hsp.auth.login.band.BandLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.hangame.hsp.auth.login.negame.NegameLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "com.toastgamenew.hsp.auth.login.ToastLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.toastgame.hsp.auth.login.ToastgameLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "com.hangame.hsp.auth.login.hangame.HangameLoginService"

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static viewInitialize(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/hangame/hsp/ui/view/ViewInitializer;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.toastnew.hsp.ui.view.ToastNewViewInitializer"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;

    invoke-direct {v0}, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/util/contact/ContactsWrapper;->setImpl(Lcom/hangame/hsp/util/contact/ContactsWrapper;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.toastgame.hsp.ui.view.ToastViewInitializer"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.hangame.hsp.ui.view.GlobalViewInitializer"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/HSPConfiguration;->HSP_LOCALE_JP:Ljava/lang/String;

    invoke-static {p0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.hangame.hsp.ui.view.jp.JpViewInitializer"

    invoke-static {p0, v0}, Lcom/hangame/hsp/core/HSPInitializer;->invokeInitMethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
