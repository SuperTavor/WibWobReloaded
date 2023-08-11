.class Lcom/adjust/sdk/TimerOnce$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/TimerOnce;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/TimerOnce;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce$1;->this$0:Lcom/adjust/sdk/TimerOnce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->this$0:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v0}, Lcom/adjust/sdk/TimerOnce;->access$100(Lcom/adjust/sdk/TimerOnce;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "%s fired"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/TimerOnce$1;->this$0:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v4}, Lcom/adjust/sdk/TimerOnce;->access$000(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->this$0:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v0}, Lcom/adjust/sdk/TimerOnce;->access$200(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->this$0:Lcom/adjust/sdk/TimerOnce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adjust/sdk/TimerOnce;->access$302(Lcom/adjust/sdk/TimerOnce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
