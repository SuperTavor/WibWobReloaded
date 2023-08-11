.class Lcom/example/util/t;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/example/util/r;


# direct methods
.method constructor <init>(Lcom/example/util/r;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/util/r;->c:Z

    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->a(Lcom/example/util/r;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xb

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/r;->c:Z

    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->a(Lcom/example/util/r;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->b(Lcom/example/util/r;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->c(Lcom/example/util/r;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->b(Lcom/example/util/r;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/util/t;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->d(Lcom/example/util/r;)V

    goto :goto_0
.end method
