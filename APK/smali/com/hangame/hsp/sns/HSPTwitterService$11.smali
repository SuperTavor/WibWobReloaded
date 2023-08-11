.class Lcom/hangame/hsp/sns/HSPTwitterService$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$11;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$11;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p4, Ljava/lang/String;

    const-string v0, "HSPTwitterService"

    invoke-static {v0, p4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$11;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;->onUserNameReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    const-string v3, "HSPTwitterService"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$11;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;

    const-string v3, "SNS"

    const/16 v4, 0x1007

    invoke-static {v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestUserNameCB;->onUserNameReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
