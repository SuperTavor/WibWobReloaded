.class Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;


# direct methods
.method constructor <init>(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;->this$0:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HeartBeatThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeartBeat Response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;->this$0:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-static {v0, p1}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->access$000(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/toast/android/analytics/heartbeat/HeartBeatThread$1;->this$0:Lcom/toast/android/analytics/heartbeat/HeartBeatThread;

    invoke-static {v1, v0}, Lcom/toast/android/analytics/heartbeat/HeartBeatThread;->access$100(Lcom/toast/android/analytics/heartbeat/HeartBeatThread;I)V

    return-void
.end method
