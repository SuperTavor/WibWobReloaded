.class public final Lcom/hangame/hsp/core/HSPInternalState;
.super Ljava/lang/Object;


# static fields
.field public static final HSP_STATE_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_LNC_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_MASHUP_OFFLINE:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_NOT_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

.field public static final HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/core/HSPInternalState;

.field private static final LOGIN_DELAY_TIME:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "HSPInternalState"

.field private static sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

.field private static sLastState:Lcom/hangame/hsp/core/HSPInternalState;

.field private static sLock:Z

.field private static sLoginTimer:Ljava/util/Timer;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_NOT_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "LNC_ONLINE"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_LNC_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "MASHUP_OFFLINE"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_OFFLINE:Lcom/hangame/hsp/core/HSPInternalState;

    new-instance v0, Lcom/hangame/hsp/core/HSPInternalState;

    const-string v1, "MASHUP_ONLINE"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/core/HSPInternalState;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_NOT_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLastState:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_NOT_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/core/HSPInternalState;->mName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized cancelTimer()V
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    const-string v2, "cancelTimer"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLoginTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLoginTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLoginTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;
    .locals 2

    const-class v0, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getHSPState()Lcom/hangame/hsp/HSPState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    return-object v0
.end method

.method static declared-synchronized initialize()V
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    const-string v2, "initialize"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLastState:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_NOT_INITIALIZED:Lcom/hangame/hsp/core/HSPInternalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isLock()Z
    .locals 4

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isOnline()Z
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isSuspended()Z
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_OFFLINE:Lcom/hangame/hsp/core/HSPInternalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized lock()V
    .locals 5

    const/4 v4, 0x1

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    if-ne v0, v4, :cond_0

    const-string v0, "HSPInternalState"

    const-string v2, "State already locked"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->startTimer()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setCurrentState(Lcom/hangame/hsp/core/HSPInternalState;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object v0, Lcom/hangame/hsp/core/HSPInternalState;->sLastState:Lcom/hangame/hsp/core/HSPInternalState;

    sput-object p0, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->sLastState:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP state aleady set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/core/HSPInternalState;->sCurrentState:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentStateWithUnlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentState(Lcom/hangame/hsp/core/HSPInternalState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized startTimer()V
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    const-string v2, "startTimer"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unlock()V
    .locals 3

    const-class v1, Lcom/hangame/hsp/core/HSPInternalState;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPInternalState"

    const-string v2, "Unlock"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    if-nez v0, :cond_0

    const-string v0, "HSPInternalState"

    const-string v2, "State already unlocked"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->cancelTimer()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/core/HSPInternalState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/hangame/hsp/core/HSPInternalState;->sLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
