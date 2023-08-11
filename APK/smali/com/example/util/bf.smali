.class public Lcom/example/util/bf;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/example/util/YWPSoundHelper;

.field private b:Landroid/media/SoundPool;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/ArrayList;

.field private f:I

.field private g:Ljava/util/concurrent/Semaphore;

.field private h:F

.field private i:I


# direct methods
.method public constructor <init>(Lcom/example/util/YWPSoundHelper;)V
    .locals 5

    const/4 v4, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/example/util/bf;->a:Lcom/example/util/YWPSoundHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/util/bf;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/bf;->g:Ljava/util/concurrent/Semaphore;

    iput v3, p0, Lcom/example/util/bf;->h:F

    iput v2, p0, Lcom/example/util/bf;->i:I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    new-instance v1, Lcom/example/util/bg;

    invoke-direct {v1, p0}, Lcom/example/util/bg;-><init>(Lcom/example/util/bf;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iput v3, p0, Lcom/example/util/bf;->h:F

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/example/util/bf;->g:Ljava/util/concurrent/Semaphore;

    iput v2, p0, Lcom/example/util/bf;->i:I

    return-void
.end method

.method static synthetic a(Lcom/example/util/bf;I)I
    .locals 0

    iput p1, p0, Lcom/example/util/bf;->f:I

    return p1
.end method

.method static synthetic a(Lcom/example/util/bf;Ljava/lang/String;IFZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/util/bf;->a(Ljava/lang/String;IFZ)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;IFZ)I
    .locals 7

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    const/4 v5, -0x1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    move v2, p3

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/util/bf;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/example/util/bf;)I
    .locals 1

    iget v0, p0, Lcom/example/util/bf;->i:I

    return v0
.end method

.method static synthetic c(Lcom/example/util/bf;)I
    .locals 2

    iget v0, p0, Lcom/example/util/bf;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/example/util/bf;->i:I

    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/sgf/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/example/util/bf;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->g:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/example/util/bf;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load soundID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;FZ)I
    .locals 9

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/example/util/bf;->a(Ljava/lang/String;IFZ)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/example/util/YWPSoundHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-static {}, Lcom/example/util/YWPSoundHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:load="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    monitor-enter v7

    :try_start_0
    iget v0, p0, Lcom/example/util/bf;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/util/bf;->i:I

    invoke-virtual {p0, p1}, Lcom/example/util/bf;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/example/util/bf;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/example/util/bf;->i:I

    monitor-exit v7

    move v0, v6

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/example/util/bf;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/example/util/bh;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/example/util/bh;-><init>(Lcom/example/util/bf;Ljava/lang/String;IFZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/example/util/bf;->g:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    iget v0, p0, Lcom/example/util/bf;->i:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/example/util/bf;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/example/util/bf;->i:I

    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    goto :goto_1

    :cond_5
    :try_start_3
    iget v0, p0, Lcom/example/util/bf;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v3, v0}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public a(F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_3

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    :goto_1
    iput v0, p0, Lcom/example/util/bf;->h:F

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    iget v4, p0, Lcom/example/util/bf;->h:F

    iget v5, p0, Lcom/example/util/bf;->h:F

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method public a(FI)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v1, p2, v0, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/example/util/bf;->h:F

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/example/util/bf;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v1, p0, Lcom/example/util/bf;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unload soundID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/example/util/bf;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    return-void
.end method
