.class Lcom/example/util/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/example/util/YWPMoviePlayer;


# direct methods
.method constructor <init>(Lcom/example/util/YWPMoviePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/aj;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer onCompletion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/example/util/aj;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-static {v0}, Lcom/example/util/YWPMoviePlayer;->b(Lcom/example/util/YWPMoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/example/util/aj;->a:Lcom/example/util/YWPMoviePlayer;

    invoke-virtual {v0}, Lcom/example/util/YWPMoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/util/aj;->a:Lcom/example/util/YWPMoviePlayer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/example/util/YWPMoviePlayer;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/example/util/YWPMoviePlayer;->d()Lcom/example/util/YWPMoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/YWPMoviePlayer;->finish()V

    return-void
.end method
