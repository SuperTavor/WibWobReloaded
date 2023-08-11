.class Lcom/adjust/sdk/AttributionHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;

.field final synthetic val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$3;->this$0:Lcom/adjust/sdk/AttributionHandler;

    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler$3;->val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$3;->this$0:Lcom/adjust/sdk/AttributionHandler;

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler$3;->val$attributionResponseData:Lcom/adjust/sdk/AttributionResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/AttributionHandler;->access$200(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method
