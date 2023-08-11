.class Lcom/adjust/sdk/ActivityHandler$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$deeplink:Ljava/lang/String;

.field final synthetic val$deeplinkIntent:Landroid/content/Intent;

.field final synthetic val$location:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$20;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$location:Landroid/net/Uri;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$deeplinkIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$deeplink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$20;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v1}, Lcom/adjust/sdk/ActivityHandler;->access$2000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$20;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$location:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnDeeplinkResponseListener;->launchReceivedDeeplink(Landroid/net/Uri;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$20;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$deeplinkIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$20;->val$deeplink:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->access$2200(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
