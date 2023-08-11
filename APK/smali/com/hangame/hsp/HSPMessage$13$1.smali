.class Lcom/hangame/hsp/HSPMessage$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMessage$13;

.field final synthetic val$byteData:[B

.field final synthetic val$packet:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$13;Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;[B)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$13$1;->this$0:Lcom/hangame/hsp/HSPMessage$13;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$packet:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;

    iput-object p3, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$byteData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1400()Ljava/util/Set;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1400()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/HSPMessage$HSPReceivePacketListener;

    iget-object v2, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$packet:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;

    iget v2, v2, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->gameNo:I

    iget-object v3, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$packet:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;

    iget v3, v3, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->type:I

    iget-object v4, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$packet:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;

    iget-wide v4, v4, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushPacket;->sourceMemberNo:J

    iget-object v6, p0, Lcom/hangame/hsp/HSPMessage$13$1;->val$byteData:[B

    invoke-interface/range {v1 .. v6}, Lcom/hangame/hsp/HSPMessage$HSPReceivePacketListener;->onPacketReceive(IIJ[B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
