.class Lcom/hangame/hsp/sns/HSPTwitterService$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterVerifyAuthenticationCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;

.field final synthetic val$doAuthentication:Z

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$image:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;

    iput-boolean p5, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$doAuthentication:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V
    .locals 4

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPTwitterService"

    const-string v1, "verifyAuthentication is Success!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/sns/HSPTwitterService;->access$200(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPTwitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyAuthentication Faill!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$doAuthentication:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    const/4 v1, 0x1

    new-instance v2, Lcom/hangame/hsp/sns/HSPTwitterService$7$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/sns/HSPTwitterService$7$1;-><init>(Lcom/hangame/hsp/sns/HSPTwitterService$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/sns/HSPTwitterService;->login(ZLcom/hangame/hsp/sns/HSPTwitter$HSPTwitterLoginCB;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$7;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedCB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
