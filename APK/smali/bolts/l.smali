.class public Lbolts/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lbolts/g;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/l;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lbolts/g;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/l;->c:Ljava/util/concurrent/Executor;

    invoke-static {}, Lbolts/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/l;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/l;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/l;->i:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Lbolts/l;
    .locals 1

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbolts/t;->b(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbolts/l;
    .locals 1

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbolts/t;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lbolts/t;
    .locals 3

    new-instance v0, Lbolts/l;

    invoke-direct {v0}, Lbolts/l;-><init>()V

    new-instance v1, Lbolts/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/t;-><init>(Lbolts/l;Lbolts/m;)V

    return-object v1
.end method

.method static synthetic a(Lbolts/l;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lbolts/l;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbolts/l;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lbolts/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lbolts/l;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lbolts/l;->c(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lbolts/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbolts/l;->e:Z

    return p1
.end method

.method static synthetic b(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lbolts/l;->d(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lbolts/l;)Z
    .locals 1

    iget-boolean v0, p0, Lbolts/l;->e:Z

    return v0
.end method

.method static synthetic b(Lbolts/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbolts/l;->f:Z

    return p1
.end method

.method static synthetic c(Lbolts/l;)V
    .locals 0

    invoke-direct {p0}, Lbolts/l;->h()V

    return-void
.end method

.method private static c(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lbolts/s;

    invoke-direct {v0, p1, p2, p0}, Lbolts/s;-><init>(Lbolts/k;Lbolts/l;Lbolts/t;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lbolts/n;

    invoke-direct {v0, p1, p2, p0}, Lbolts/n;-><init>(Lbolts/k;Lbolts/l;Lbolts/t;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g()Lbolts/l;
    .locals 1

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/t;->c()V

    invoke-virtual {v0}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbolts/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p0}, Lbolts/k;->then(Lbolts/l;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/l;->i:Ljava/util/List;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method


# virtual methods
.method public a(Lbolts/k;)Lbolts/l;
    .locals 1

    sget-object v0, Lbolts/l;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/l;->a(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;
    .locals 5

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v0

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lbolts/l;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lbolts/l;->i:Ljava/util/List;

    new-instance v4, Lbolts/p;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/p;-><init>(Lbolts/l;Lbolts/t;Lbolts/k;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {v0, p1, p0, p2}, Lbolts/l;->c(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V

    :cond_1
    invoke-virtual {v0}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lbolts/k;)Lbolts/l;
    .locals 1

    sget-object v0, Lbolts/l;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/l;->c(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method public b(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;
    .locals 5

    invoke-static {}, Lbolts/l;->a()Lbolts/t;

    move-result-object v0

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lbolts/l;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lbolts/l;->i:Ljava/util/List;

    new-instance v4, Lbolts/q;

    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/q;-><init>(Lbolts/l;Lbolts/t;Lbolts/k;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {v0, p1, p0, p2}, Lbolts/l;->d(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V

    :cond_1
    invoke-virtual {v0}, Lbolts/t;->a()Lbolts/l;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lbolts/l;->e:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;
    .locals 1

    new-instance v0, Lbolts/r;

    invoke-direct {v0, p0, p1}, Lbolts/r;-><init>(Lbolts/l;Lbolts/k;)V

    invoke-virtual {p0, v0, p2}, Lbolts/l;->b(Lbolts/k;Ljava/util/concurrent/Executor;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lbolts/l;->f:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbolts/l;->h:Ljava/lang/Exception;

    if-eqz v0, :cond_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbolts/l;->g:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    iget-object v1, p0, Lbolts/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbolts/l;->h:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
