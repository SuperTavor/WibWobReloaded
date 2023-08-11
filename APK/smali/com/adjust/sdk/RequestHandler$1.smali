.class Lcom/adjust/sdk/RequestHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/RequestHandler;

.field final synthetic val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic val$queueSize:I


# direct methods
.method constructor <init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler$1;->this$0:Lcom/adjust/sdk/RequestHandler;

    iput-object p2, p0, Lcom/adjust/sdk/RequestHandler$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iput p3, p0, Lcom/adjust/sdk/RequestHandler$1;->val$queueSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler$1;->this$0:Lcom/adjust/sdk/RequestHandler;

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler$1;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    iget v2, p0, Lcom/adjust/sdk/RequestHandler$1;->val$queueSize:I

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/RequestHandler;->access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method
