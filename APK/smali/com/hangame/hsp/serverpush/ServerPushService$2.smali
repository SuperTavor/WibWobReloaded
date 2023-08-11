.class final Lcom/hangame/hsp/serverpush/ServerPushService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;


# instance fields
.field final synthetic val$hsp13ServerPushPacketHandler:Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/serverpush/ServerPushService$2;->val$hsp13ServerPushPacketHandler:Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveResponse(I[B)V
    .locals 4

    new-instance v0, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->Load([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LXDR/XDRException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/serverpush/ServerPushService$2;->val$hsp13ServerPushPacketHandler:Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/serverpush/ServerPushService$2;->val$hsp13ServerPushPacketHandler:Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;

    invoke-interface {v1, v0}, Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;->receivePacket(Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "ServerPushService"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ServerPushService"

    invoke-virtual {v1}, LXDR/XDRException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
