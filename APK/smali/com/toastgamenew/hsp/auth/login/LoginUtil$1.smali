.class final Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

.field final synthetic val$tokenUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$tokenUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, compress"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ToastWeb"

    invoke-static {v1}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$tokenUrl:Ljava/lang/String;

    sget-object v2, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTUrlWithGET(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v0

    const-string v1, "ToastWeb"

    invoke-static {v1}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "LoginUtil"

    const-string v2, "there is no OAuth Token"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR_TOKEN_AUTH::cannot read Json Data of tokenLogin.nhn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->access$002(Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    const-string v0, "LoginUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOAuthToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errorType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REDIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    invoke-virtual {v1, v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onProcessError(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR_TOKEN_AUTH::cannot read Json Data of tokenLogin.nhn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0, v7}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isToastType()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;->val$callback:Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;->onProcessError(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    new-instance v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1$1;

    invoke-direct {v1, p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil$1$1;-><init>(Lcom/toastgamenew/hsp/auth/login/LoginUtil$1;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "access_token_secret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    :cond_4
    :goto_1
    :try_start_3
    const-string v0, "toast"

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "LoginUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoginResult OAuthToken : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accessTokenSecret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", expiresIn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/auth/OAuthData;->createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mLoginTp:Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;

    invoke-static {v0, v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->loginByOAuth(Lcom/hangame/hsp/auth/OAuthData;Lcom/toastgamenew/hsp/auth/login/LoginUtil$LoginType;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v6, "LoginUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expiresIn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "ERROR_NETWORK_CONNECTION::cannot access tokenLogin"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x1002

    const-string v2, "cannot access tokenLogin"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->handleResult(Lcom/hangame/hsp/HSPResult;)V

    goto/16 :goto_0
.end method
