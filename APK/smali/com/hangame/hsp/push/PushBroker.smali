.class public final Lcom/hangame/hsp/push/PushBroker;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/hangame/hsp/push/PushBroker;


# instance fields
.field private mTCPushGCMClass:Ljava/lang/Class;

.field private mTCPushTencentClass:Ljava/lang/Class;

.field private pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hangame/hsp/push/PushBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.hangame.hsp.push.TCPushTencentRegister"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    iput-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/push/PushBroker;->initTCPush(Lcom/hangame/hsp/push/HSPPushManager$PushType;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Push library init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    iput-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hangame/hsp/push/PushBroker;
    .locals 2

    const-class v1, Lcom/hangame/hsp/push/PushBroker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/push/PushBroker;->instance:Lcom/hangame/hsp/push/PushBroker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/push/PushBroker;

    invoke-direct {v0}, Lcom/hangame/hsp/push/PushBroker;-><init>()V

    sput-object v0, Lcom/hangame/hsp/push/PushBroker;->instance:Lcom/hangame/hsp/push/PushBroker;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/push/PushBroker;->instance:Lcom/hangame/hsp/push/PushBroker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initTCPush(Lcom/hangame/hsp/push/HSPPushManager$PushType;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne p1, v0, :cond_1

    const-string v0, "com.hangame.hsp.push.TCPushGCMRegister"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushGCMClass:Ljava/lang/Class;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne p1, v0, :cond_0

    const-string v0, "com.hangame.hsp.push.TCPushTencentRegister"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushTencentClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this is no TCPushGCM class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAdPushAgreement(Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v1, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushGCMClass:Ljava/lang/Class;

    const-string v1, "getAdPushAgreement"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v1, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushTencentClass:Ljava/lang/Class;

    const-string v1, "getAdPushAgreement"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAdPushAgreement::Push library init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    const-string v1, "getAdPushAgreement::Push library init failed."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAdPushAgreement::Push library init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method requestSubscription(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    const-string v2, "requestSubscription"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v2, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushGCMClass:Ljava/lang/Class;

    const-string v1, "requestSubscription"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v2, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushTencentClass:Ljava/lang/Class;

    const-string v1, "requestSubscription"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSubscription is occured exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Push library requestSubscription failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestUnsubscription(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    const-string v2, "requestUnsubscription"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v2, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushGCMClass:Ljava/lang/Class;

    const-string v1, "requestUnsubscription"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v2, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushTencentClass:Ljava/lang/Class;

    const-string v1, "requestUnsubscription"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Push library requestUnsubscription failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdPushAgreement(ZZZLcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v1, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_GCM:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushGCMClass:Ljava/lang/Class;

    const-string v1, "setAdPushAgreement"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->pushType:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    sget-object v1, Lcom/hangame/hsp/push/HSPPushManager$PushType;->TCPush_TENCENT:Lcom/hangame/hsp/push/HSPPushManager$PushType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/push/PushBroker;->mTCPushTencentClass:Ljava/lang/Class;

    const-string v1, "getAdPushAgreement"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hangame/hsp/HSPMessage$HSPAlertAdPushAgreementCB;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setAdPushAgreement::Push library init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/push/PushBroker;->TAG:Ljava/lang/String;

    const-string v1, "setAdPushAgreement::Push library init failed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setAdPushAgreement::Push library init failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
