.class final Lcom/hangame/hsp/HSPSocial$36;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$36;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v0, ""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-lez v4, :cond_3

    :try_start_1
    const-string v4, "nextPageToken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v0, "HSPSocial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "friend nextPageToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "image"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/hangame/hsp/social/SocialFriendProfile;

    invoke-direct {v7, v5, v6, v4}, Lcom/hangame/hsp/social/SocialFriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hangame/hsp/HSPSocial;->access$602(Z)Z

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$36;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;

    invoke-static {v1, v0}, Lcom/hangame/hsp/HSPSocial;->access$700(Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$36;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;

    invoke-interface {v0, v3, v1, p2}, Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;->onCompletion(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocial;->access$602(Z)Z

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$36;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;->onCompletion(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "HSPSocial"

    const-string v1, "Exception is occurred from querySocialHttpAPI onReceive."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPSocial$36;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;

    invoke-interface {v0, v8, v8, p2}, Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;->onCompletion(Ljava/util/List;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_2
.end method
