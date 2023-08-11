.class final Lcom/hangame/hsp/HSPCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$fContext:Landroid/content/Context;

.field final synthetic val$fGameID:Ljava/lang/String;

.field final synthetic val$fGameNo:I

.field final synthetic val$fGameVersion:Ljava/lang/String;

.field final synthetic val$lock:Lcom/hangame/hsp/util/MutexLock;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/util/MutexLock;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$1;->val$fContext:Landroid/content/Context;

    iput p2, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameNo:I

    iput-object p3, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameID:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/HSPCore$1;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/HSPCore;

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore$1;->val$fContext:Landroid/content/Context;

    iget v2, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameNo:I

    iget-object v3, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameID:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/HSPCore$1;->val$fGameVersion:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPCore;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/HSPCore$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$102(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPCore;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->access$100()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPCore;->access$300(Lcom/hangame/hsp/HSPCore;)V

    const-string v0, "HSPCore"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->access$100()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPCore;->access$400(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "HSPCore"

    const-string v1, "wait for notifying init lock"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$1;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v0, "HSPCore"

    const-string v1, "notify Init Lock"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/hangame/hsp/HSPCore;->access$102(Lcom/hangame/hsp/HSPCore;)Lcom/hangame/hsp/HSPCore;

    const-string v1, "HSPCore"

    const-string v2, "exception occurred in createInstance()"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "HSPCore"

    const-string v1, "wait for notifying init lock"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPCore$1;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v0, "HSPCore"

    const-string v1, "notify Init Lock"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v1, "HSPCore"

    const-string v2, "wait for notifying init lock"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/HSPCore$1;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v1}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v1, "HSPCore"

    const-string v2, "notify Init Lock"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
