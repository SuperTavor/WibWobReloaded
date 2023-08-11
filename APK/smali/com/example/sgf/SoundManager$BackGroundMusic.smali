.class public Lcom/example/sgf/SoundManager$BackGroundMusic;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final r:Ljava/util/HashMap;

.field private static final s:Ljava/util/HashMap;

.field private static final t:Ljava/util/HashMap;


# instance fields
.field a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Ljava/util/concurrent/ScheduledFuture;

.field c:Ljava/util/ArrayList;

.field private e:Landroid/media/MediaPlayer;

.field private f:Landroid/media/MediaPlayer;

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Lcom/example/sgf/aa;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->d:Ljava/lang/String;

    new-instance v0, Lcom/example/sgf/v;

    invoke-direct {v0}, Lcom/example/sgf/v;-><init>()V

    sput-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->r:Ljava/util/HashMap;

    new-instance v0, Lcom/example/sgf/w;

    invoke-direct {v0}, Lcom/example/sgf/w;-><init>()V

    sput-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->s:Ljava/util/HashMap;

    new-instance v0, Lcom/example/sgf/x;

    invoke-direct {v0}, Lcom/example/sgf/x;-><init>()V

    sput-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->t:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2c

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ywp_bgm_puzzle_normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ywp_bgm_puzzle_boss"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ywp_bgm_puzzle_kurooni"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ywp_bgm_map_ep01"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ywp_bgm_map_ep02"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ywp_bgm_map_ep03"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ywp_bgm_map_ep04"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ywp_bgm_map_ep05"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ywp_bgm_puzzle_nurarihyon"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ywp_bgm_puzzle_nuraneira"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ywp_bgm_puzzle_enma"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ywp_bgm_map_012"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ywp_bgm_map_013"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "ywp_bgm_puzzle_kurooni2"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "ywp_bgm_map_sangoku"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ywp_bgm_puzzle_sangoku_boss"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ywp_bgm_puzzle_sangoku_normal"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "ywp_bgm_puzzle_sangoku_noruka"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ywp_bgm_puzzle_sangoku_soruka"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ywp_bgm_map_015"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ywp_bgm_map_016"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ywp_bgm_puzzle_weekly_bigboss"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ywp_bgm_puzzle_ubaune"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ywp_bgm_map_017"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "ywp_bgm_map_018"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ywp_bgm_map_019"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "ywp_bgm_map_020"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "ywp_bgm_map_021"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "ywp_bgm_map_022"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "ywp_bgm_puzzle_kkbrothers"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "ywp_bgm_puzzle_tomnyan"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "ywp_bgm_puzzle_yw3_boss"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "ywp_bgm_puzzle_yw3_normal"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "ywp_bgm_puzzle_yamada"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "ywp_bgm_puzzle_kkbrothers_2"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "ywp_bgm_map_Moogle"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "ywp_bgm_puzzle_Moogle"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "ywp_bgm_map_Chocobo"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "ywp_bgm_puzzle_Chocobo"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "ywp_bgm_puzzle_yw3_boss_002"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "ywp_bgm_puzzle_hino_intro"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "ywp_bgm_puzzle_hino_main"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ywp_bgm_puzzle_hino"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "ywp_bgm_puzzle_yw3_boss_003"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->init()V

    return-void
.end method

.method static synthetic a(Lcom/example/sgf/SoundManager$BackGroundMusic;)F
    .locals 1

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->g:F

    return v0
.end method

.method private a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/example/sgf/y;

    invoke-direct {v0, p0}, Lcom/example/sgf/y;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/media/MediaPlayer;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    move v0, v6

    :goto_1
    return v0

    :cond_1
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1
.end method

.method static synthetic b(Lcom/example/sgf/SoundManager$BackGroundMusic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/example/sgf/SoundManager$BackGroundMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/example/sgf/SoundManager$BackGroundMusic;)I
    .locals 1

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    return v0
.end method

.method static synthetic e(Lcom/example/sgf/SoundManager$BackGroundMusic;)I
    .locals 1

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->p:I

    return v0
.end method

.method static synthetic f(Lcom/example/sgf/SoundManager$BackGroundMusic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/example/sgf/SoundManager$BackGroundMusic;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public changePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    return-void
.end method

.method public createLoopTask(JJ)V
    .locals 5

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->removeLoopTask(Z)V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    add-long/2addr v0, p3

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    invoke-virtual {v0}, Lcom/example/sgf/aa;->b()V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    iget v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    int-to-long v2, v2

    sub-long/2addr v2, p1

    add-long/2addr v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->g:F

    return v0
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->g:F

    iput-boolean v3, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->h:Z

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->i:Z

    iput-boolean v3, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->l:Z

    iput v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    iput v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->q:I

    iput-object v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    new-instance v0, Lcom/example/sgf/aa;

    invoke-direct {v0, p0}, Lcom/example/sgf/aa;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    iput-object v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->setManualRestartEarlyTime()V

    return-void
.end method

.method public isManualLoop(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->q:I

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_5

    sget-object v4, Lcom/example/sgf/SoundManager$BackGroundMusic;->t:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_6

    move v2, v3

    goto :goto_0
.end method

.method public isTroubleModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->release()V

    iput p2, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->q:I

    iput-object p1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->isManualLoop(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1, v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a(Ljava/lang/String;Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/example/sgf/s;

    invoke-direct {v2, p0}, Lcom/example/sgf/s;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1, v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a(Ljava/lang/String;Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/example/sgf/t;

    invoke-direct {v2, p0}, Lcom/example/sgf/t;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/example/sgf/u;

    invoke-direct {v2, p0}, Lcom/example/sgf/u;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(F)V
    .locals 2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public play(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->h:Z

    :try_start_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->setManualDuration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    invoke-virtual {v0}, Lcom/example/sgf/aa;->a()V

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1f4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/sgf/SoundManager$BackGroundMusic;->createLoopTask(JJ)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->removeLoopTask(Z)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    iput-object v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public removeLoopTask(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    invoke-virtual {v0}, Lcom/example/sgf/aa;->c()V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-boolean v4, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->l:Z

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    const-wide/16 v2, -0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/example/sgf/aa;->a(J)V

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/sgf/SoundManager$BackGroundMusic;->createLoopTask(JJ)V

    :goto_0
    iput-boolean v4, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->i:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public setManualDuration(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->q:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->q:I

    iput v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/example/sgf/SoundManager$BackGroundMusic;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v1, Lcom/example/sgf/SoundManager$BackGroundMusic;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->o:I

    goto :goto_0
.end method

.method public setManualRestartEarlyTime()V
    .locals 1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->p:I

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iput p1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->g:F

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->h:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->removeLoopTask(Z)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    invoke-virtual {v0}, Lcom/example/sgf/aa;->d()V

    new-instance v0, Lcom/example/sgf/aa;

    invoke-direct {v0, p0}, Lcom/example/sgf/aa;-><init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V

    iput-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->m:Lcom/example/sgf/aa;

    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->l:Z

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->i:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->removeLoopTask(Z)V

    iget-object v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->j:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/example/sgf/SoundManager$BackGroundMusic;->i:Z

    :cond_1
    return-void
.end method
