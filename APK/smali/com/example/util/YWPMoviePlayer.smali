.class public Lcom/example/util/YWPMoviePlayer;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Lcom/example/util/YWPMoviePlayer;


# instance fields
.field private e:Landroid/widget/VideoView;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/media/MediaPlayer;

.field private k:Lcom/example/util/r;

.field private l:Lcom/example/util/ag;

.field private m:Lcom/example/util/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/example/util/YWPMoviePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    sput-boolean v1, Lcom/example/util/YWPMoviePlayer;->c:Z

    sput-boolean v1, Lcom/example/util/YWPMoviePlayer;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/example/util/YWPMoviePlayer;->f:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/example/util/YWPMoviePlayer;->g:F

    const-string v0, ""

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/example/util/YWPMoviePlayer;->i:Z

    iput-object v1, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    iput-object v1, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    iput-object v1, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    return-void
.end method

.method static synthetic a(Lcom/example/util/YWPMoviePlayer;)F
    .locals 1

    iget v0, p0, Lcom/example/util/YWPMoviePlayer;->g:F

    return v0
.end method

.method static synthetic a(Lcom/example/util/YWPMoviePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/example/util/YWPMoviePlayer;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lcom/example/util/YWPMoviePlayer;
    .locals 1

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->d:Lcom/example/util/YWPMoviePlayer;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/example/util/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/bd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->getVolume()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/example/util/YWPMoviePlayer;->g:F

    iget v2, p0, Lcom/example/util/YWPMoviePlayer;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/example/util/YWPMoviePlayer;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/example/util/YWPMoviePlayer;->f:Z

    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/example/util/YWPMoviePlayer;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->finish()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    const-string v1, "MediaPlayer onCreate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/example/util/YWPMoviePlayer;->setVolumeControlStream(I)V

    sput-object p0, Lcom/example/util/YWPMoviePlayer;->d:Lcom/example/util/YWPMoviePlayer;

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    if-nez v0, :cond_1

    new-instance v0, Lcom/example/util/r;

    invoke-direct {v0, p0}, Lcom/example/util/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    :cond_1
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    if-nez v0, :cond_2

    new-instance v0, Lcom/example/util/ag;

    invoke-direct {v0, p0}, Lcom/example/util/ag;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    :cond_2
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    if-nez v0, :cond_3

    new-instance v0, Lcom/example/util/bd;

    invoke-direct {v0, p0}, Lcom/example/util/bd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    :cond_3
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    new-instance v1, Lcom/example/util/ai;

    invoke-direct {v1, p0}, Lcom/example/util/ai;-><init>(Lcom/example/util/YWPMoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    new-instance v1, Lcom/example/util/aj;

    invoke-direct {v1, p0}, Lcom/example/util/aj;-><init>(Lcom/example/util/YWPMoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VOLUME"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/example/util/YWPMoviePlayer;->g:F

    const-string v1, "FILENAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/util/YWPMoviePlayer;->h:Ljava/lang/String;

    const-string v1, "ISEVENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/example/util/YWPMoviePlayer;->i:Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/example/util/YWPMoviePlayer;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v1, p0, Lcom/example/util/YWPMoviePlayer;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/util/YWPMoviePlayer;->a:Z

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video full path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/util/YWPMoviePlayer;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/example/util/bc;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_2
    iput-object v2, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    sput-object v2, Lcom/example/util/YWPMoviePlayer;->d:Lcom/example/util/YWPMoviePlayer;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/example/util/YWPMoviePlayer;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    const-string v1, "VideoView onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getRenderThread()Lcom/example/sgf/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/n;->a()V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    invoke-virtual {v0}, Lcom/example/util/r;->b()V

    :cond_1
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    invoke-virtual {v0}, Lcom/example/util/ag;->b()V

    :cond_2
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    invoke-virtual {v0}, Lcom/example/util/bd;->b()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/YWPMoviePlayer;->j:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected onResume()V
    .locals 2

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPMoviePlayer;->b:Ljava/lang/String;

    const-string v1, "VideoView onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getRenderThread()Lcom/example/sgf/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/n;->b()V

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->k:Lcom/example/util/r;

    invoke-virtual {v0}, Lcom/example/util/r;->c()V

    :cond_1
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->l:Lcom/example/util/ag;

    invoke-virtual {v0}, Lcom/example/util/ag;->c()V

    :cond_2
    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->m:Lcom/example/util/bd;

    invoke-virtual {v0}, Lcom/example/util/bd;->c()V

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getRenderThread()Lcom/example/sgf/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/n;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/example/util/YWPMoviePlayer;->f:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/example/util/YWPMoviePlayer;->a:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/example/util/YWPMoviePlayer;->f:Z

    iget-object v0, p0, Lcom/example/util/YWPMoviePlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/example/util/YWPMoviePlayer;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/example/util/YWPMoviePlayer;->finish()V

    :cond_0
    return v3
.end method
