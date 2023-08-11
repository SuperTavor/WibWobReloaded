.class Lcom/adjust/sdk/ActivityHandler$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$11;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$11;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1600(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method
