.class Lcom/hangame/hsp/sns/HSPFacebookService$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

.field final synthetic val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/core/HSPHttpResHandler;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HSPFacebookService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idpAuthTicket["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v1}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->setAccessToken(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v2}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "locale"

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "https://graph.facebook.com/me"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    invoke-static {v0}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$000(Lcom/hangame/hsp/sns/HSPFacebookService;)Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->val$verifyResHandler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->useProviderResources(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "locale"

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "locale"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "HSPFacebookService"

    const-string v1, "authTicket is empty!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    const-string v1, "SNS"

    const/16 v2, 0x1009

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_3
    const-string v0, "HSPFacebookService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIdpAuthTicketLoad fail!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$6;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;

    invoke-interface {v0, v4, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookVerifyAuthenticationCB;->onAuthenticationVerify(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
