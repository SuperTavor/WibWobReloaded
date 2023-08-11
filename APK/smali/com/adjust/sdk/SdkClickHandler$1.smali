.class Lcom/adjust/sdk/SdkClickHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/SdkClickHandler;

.field final synthetic val$sdkClick:Lcom/adjust/sdk/ActivityPackage;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    iput-object p2, p0, Lcom/adjust/sdk/SdkClickHandler$1;->val$sdkClick:Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler$1;->val$sdkClick:Lcom/adjust/sdk/ActivityPackage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Added sdk_click %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v3}, Lcom/adjust/sdk/SdkClickHandler;->access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/SdkClickHandler$1;->val$sdkClick:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v3}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$1;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$200(Lcom/adjust/sdk/SdkClickHandler;)V

    return-void
.end method
