.class final Lcom/hangame/hsp/mashup/HSPMashupService$1;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "HSPMashupService"

    const-string v1, "disconnect for NO_CONNECTIVITY"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/hangame/hsp/mashup/ConnectionManager;->disconnect()V

    :cond_0
    return-void
.end method
