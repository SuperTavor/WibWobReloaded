.class Lcom/example/sgf/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/example/sgf/SoundManager$BackGroundMusic;


# direct methods
.method constructor <init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/t;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/example/sgf/t;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a(Lcom/example/sgf/SoundManager$BackGroundMusic;)F

    move-result v0

    iget-object v1, p0, Lcom/example/sgf/t;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v1}, Lcom/example/sgf/SoundManager$BackGroundMusic;->a(Lcom/example/sgf/SoundManager$BackGroundMusic;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/t;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->b(Lcom/example/sgf/SoundManager$BackGroundMusic;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/t;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->c(Lcom/example/sgf/SoundManager$BackGroundMusic;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/sgf/SoundManager;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
