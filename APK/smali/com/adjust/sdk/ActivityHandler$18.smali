.class Lcom/adjust/sdk/ActivityHandler$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$18;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$18;->val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$18;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$18;->val$sessionResponseData:Lcom/adjust/sdk/SessionResponseData;

    invoke-virtual {v1}, Lcom/adjust/sdk/SessionResponseData;->getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnSessionTrackingFailedListener;->onFinishedSessionTrackingFailed(Lcom/adjust/sdk/AdjustSessionFailure;)V

    return-void
.end method
