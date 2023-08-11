.class Lcom/example/sgf/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/example/sgf/SoundManager$BackGroundMusic;


# direct methods
.method constructor <init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/u;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/u;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->b(Lcom/example/sgf/SoundManager$BackGroundMusic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/u;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-static {v0}, Lcom/example/sgf/SoundManager$BackGroundMusic;->c(Lcom/example/sgf/SoundManager$BackGroundMusic;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/sgf/SoundManager;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
