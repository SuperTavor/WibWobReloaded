.class public Lbolts/t;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lbolts/l;


# direct methods
.method private constructor <init>(Lbolts/l;)V
    .locals 0

    iput-object p1, p0, Lbolts/t;->a:Lbolts/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbolts/l;Lbolts/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lbolts/t;-><init>(Lbolts/l;)V

    return-void
.end method


# virtual methods
.method public a()Lbolts/l;
    .locals 1

    iget-object v0, p0, Lbolts/t;->a:Lbolts/l;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v1}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->b(Lbolts/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/l;->a(Lbolts/l;Z)Z

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2, p1}, Lbolts/l;->a(Lbolts/l;Ljava/lang/Exception;)Ljava/lang/Exception;

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->c(Lbolts/l;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v1}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->b(Lbolts/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/l;->a(Lbolts/l;Z)Z

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2, p1}, Lbolts/l;->a(Lbolts/l;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->c(Lbolts/l;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0, p1}, Lbolts/t;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lbolts/t;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v1}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->b(Lbolts/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/l;->a(Lbolts/l;Z)Z

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/l;->b(Lbolts/l;Z)Z

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->a(Lbolts/l;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lbolts/t;->a:Lbolts/l;

    invoke-static {v2}, Lbolts/l;->c(Lbolts/l;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lbolts/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
