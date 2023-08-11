.class Lcom/adjust/sdk/ActivityHandler$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$event:Lcom/adjust/sdk/AdjustEvent;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$6;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$6;->val$event:Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$6;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$1000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$6;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Event triggered before first application launch.\nThis will trigger the SDK start and an install without user interaction.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$6;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$600(Lcom/adjust/sdk/ActivityHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$6;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$6;->val$event:Lcom/adjust/sdk/AdjustEvent;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1100(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method
