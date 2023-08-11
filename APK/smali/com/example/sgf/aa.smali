.class Lcom/example/sgf/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcom/example/sgf/SoundManager$BackGroundMusic;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/example/sgf/aa;->a:J

    iput-wide v0, p0, Lcom/example/sgf/aa;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/sgf/aa;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/example/sgf/aa;->a:J

    iput-wide v0, p0, Lcom/example/sgf/aa;->b:J

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->d(Lcom/example/sgf/SoundManager$BackGroundMusic;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/example/sgf/aa;->b:J

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/example/sgf/aa;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/sgf/aa;->a:J

    return-void
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/example/sgf/aa;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/sgf/aa;->b:J

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/sgf/aa;->d:Z

    return-void
.end method

.method public run()V
    .locals 6

    invoke-virtual {p0}, Lcom/example/sgf/aa;->c()V

    iget-wide v0, p0, Lcom/example/sgf/aa;->b:J

    iget-object v2, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v2}, Lcom/example/sgf/SoundManager$BackGroundMusic;->d(Lcom/example/sgf/SoundManager$BackGroundMusic;)I

    move-result v2

    iget-object v3, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v3}, Lcom/example/sgf/SoundManager$BackGroundMusic;->e(Lcom/example/sgf/SoundManager$BackGroundMusic;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->d(Lcom/example/sgf/SoundManager$BackGroundMusic;)I

    move-result v0

    iget-object v1, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->e(Lcom/example/sgf/SoundManager$BackGroundMusic;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/example/sgf/aa;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/example/sgf/aa;->c()V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->f(Lcom/example/sgf/SoundManager$BackGroundMusic;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/example/sgf/aa;->a()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/example/sgf/aa;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->g(Lcom/example/sgf/SoundManager$BackGroundMusic;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-virtual {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->changePlayer()V

    invoke-virtual {p0}, Lcom/example/sgf/aa;->a()V

    iget-object v0, p0, Lcom/example/sgf/aa;->c:Lcom/example/sgf/SoundManager$BackGroundMusic;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1f4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/example/sgf/SoundManager$BackGroundMusic;->createLoopTask(JJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
