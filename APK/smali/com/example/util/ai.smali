.class Lcom/example/util/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/example/util/YWPMoviePlayer;


# direct methods
.method constructor <init>(Lcom/example/util/YWPMoviePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/ai;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSize(Height,Width) = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/util/ai;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-static {v2}, Lcom/example/util/YWPMoviePlayer;->a(Lcom/example/util/YWPMoviePlayer;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/example/util/ai;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-static {v0, p1}, Lcom/example/util/YWPMoviePlayer;->a(Lcom/example/util/YWPMoviePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/example/util/ai;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-virtual {v0}, Lcom/example/util/YWPMoviePlayer;->a()V

    iget-object v0, p0, Lcom/example/util/ai;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-static {v0}, Lcom/example/util/YWPMoviePlayer;->b(Lcom/example/util/YWPMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
