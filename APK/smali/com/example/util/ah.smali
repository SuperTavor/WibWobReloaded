.class Lcom/example/util/ah;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/example/util/ag;


# direct methods
.method constructor <init>(Lcom/example/util/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/ah;->a:Lcom/example/util/ag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/example/util/ag;->a(Z)Z

    :goto_1
    iget-object v0, p0, Lcom/example/util/ah;->a:Lcom/example/util/ag;

    invoke-static {v0}, Lcom/example/util/ag;->a(Lcom/example/util/ag;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/example/util/ag;->a(Z)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/example/util/ag;->a(Z)Z

    iget-object v0, p0, Lcom/example/util/ah;->a:Lcom/example/util/ag;

    invoke-static {v0}, Lcom/example/util/ag;->a(Lcom/example/util/ag;)V

    goto :goto_2
.end method
