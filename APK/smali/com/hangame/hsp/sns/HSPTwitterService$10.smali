.class Lcom/hangame/hsp/sns/HSPTwitterService$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;

.field final synthetic val$idCodeArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Ljava/util/List;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 14

    check-cast p4, Ljava/lang/String;

    const-string v2, "HSPTwitterService"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_3

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v2, "id"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-nez v2, :cond_2

    const-string v2, "screen_name"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v2, "profile_image_url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$idCodeArray:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v6, v7, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;->onFriendInfosReceive(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v2

    const-string v3, "HSPTwitterService"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "SNS"

    const/16 v7, 0x1007

    invoke-static {v6, v7}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;->onFriendInfosReceive(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$10;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterRequestFriendInfosCB;->onFriendInfosReceive(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_3
.end method
