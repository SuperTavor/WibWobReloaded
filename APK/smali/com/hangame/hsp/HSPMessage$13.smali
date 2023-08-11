.class final Lcom/hangame/hsp/HSPMessage$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivePacket(Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;)V
    .locals 4

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->packet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->packet:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/HSPMessage$13$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/hangame/hsp/HSPMessage$13$1;-><init>(Lcom/hangame/hsp/HSPMessage$13;Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;[B)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
