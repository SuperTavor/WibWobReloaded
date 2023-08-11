.class public Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/ToastWebView;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/view/ToastWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOAuthToken(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "ToastWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOAuthToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView;->ERROR_TYPE_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOGINSERVICE"

    const/16 v2, 0x4001

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface$1;-><init>(Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;)V

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView;->ACCESS_TOKEN_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView;->ACCESS_TOKEN_SECRET_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    iget-object v4, v4, Lcom/hangame/hsp/ui/view/ToastWebView;->EXPIRES_IN_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_1
    const-wide/16 v4, 0x0

    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v4

    :cond_1
    :goto_2
    :try_start_6
    const-string v1, "ToastWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoginResult OAuthToken : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", accessTokenSecret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expiresIn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/ToastWebView;->mChannelId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/view/ToastWebView;->loginByOAuth(Lcom/hangame/hsp/auth/OAuthData;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastWebView$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/ui/view/ToastWebView;

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/view/ToastWebView;->onIdpLogout()V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_7
    const-string v6, "ToastWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiresIn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method
