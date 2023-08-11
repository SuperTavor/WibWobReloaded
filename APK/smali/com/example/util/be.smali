.class Lcom/example/util/be;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/example/util/bd;


# direct methods
.method constructor <init>(Lcom/example/util/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/be;->a:Lcom/example/util/bd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.EXTRA_RINGER_MODE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/example/util/bd;->a(Z)Z

    :goto_0
    iget-object v0, p0, Lcom/example/util/be;->a:Lcom/example/util/bd;

    invoke-static {v0}, Lcom/example/util/bd;->a(Lcom/example/util/bd;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/example/util/bd;->a(Z)Z

    goto :goto_0
.end method
