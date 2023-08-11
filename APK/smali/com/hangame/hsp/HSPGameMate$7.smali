.class final Lcom/hangame/hsp/HSPGameMate$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResponse(I[B)V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->Load([BI)I

    new-instance v1, Lcom/hangame/hsp/HSPGameMate$7$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/HSPGameMate$7$1;-><init>(Lcom/hangame/hsp/HSPGameMate$7;Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LXDR/XDRException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HSPGameMate"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HSPGameMate"

    invoke-virtual {v0}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
