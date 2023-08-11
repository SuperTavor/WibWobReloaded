.class public final Lcom/hangame/hsp/gmessenger/HSPGMBroker;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPGMBroker"

.field private static instance:Lcom/hangame/hsp/gmessenger/HSPGMBroker;


# instance fields
.field private gmCoreClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hangame/hsp/gmessenger/HSPGMBroker;
    .locals 2

    const-class v1, Lcom/hangame/hsp/gmessenger/HSPGMBroker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->instance:Lcom/hangame/hsp/gmessenger/HSPGMBroker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;

    invoke-direct {v0}, Lcom/hangame/hsp/gmessenger/HSPGMBroker;-><init>()V

    sput-object v0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->instance:Lcom/hangame/hsp/gmessenger/HSPGMBroker;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->instance:Lcom/hangame/hsp/gmessenger/HSPGMBroker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHSPGMCore()Z
    .locals 2

    :try_start_0
    const-string v0, "com.hangame.hsp.gmessenger.HSPGMCore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->gmCoreClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "HSPGMBroker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDisconnect()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->initHSPGMCore()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->gmCoreClass:Ljava/lang/Class;

    const-string v3, "onDisconnect"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HSPGMBroker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onRegisterAndGMsgLogin()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->initHSPGMCore()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->gmCoreClass:Ljava/lang/Class;

    const-string v3, "onRegisterAndGMsgLogin"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HSPGMBroker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onUnRegisterAndDeleteData()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->initHSPGMCore()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/gmessenger/HSPGMBroker;->gmCoreClass:Ljava/lang/Class;

    const-string v3, "onUnRegisterAndDeleteData"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HSPGMBroker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
