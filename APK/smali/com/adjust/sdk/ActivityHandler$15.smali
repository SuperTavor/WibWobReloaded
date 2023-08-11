.class Lcom/adjust/sdk/ActivityHandler$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$eventResponseData:Lcom/adjust/sdk/EventResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$15;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$15;->val$eventResponseData:Lcom/adjust/sdk/EventResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$15;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$15;->val$eventResponseData:Lcom/adjust/sdk/EventResponseData;

    invoke-virtual {v1}, Lcom/adjust/sdk/EventResponseData;->getSuccessResponseData()Lcom/adjust/sdk/AdjustEventSuccess;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnEventTrackingSucceededListener;->onFinishedEventTrackingSucceeded(Lcom/adjust/sdk/AdjustEventSuccess;)V

    return-void
.end method
