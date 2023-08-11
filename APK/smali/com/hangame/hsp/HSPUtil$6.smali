.class final Lcom/hangame/hsp/HSPUtil$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$6;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0x1002

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip, compress"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCheckAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?idNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTUrlWithGET(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v0, "HSPUtil"

    const-string v1, "there is no Data"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$6;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;

    const-string v1, "HSPSERVICE"

    const/16 v2, 0x1007

    const-string v3, "there is no Data"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2, v4}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "HSPUtil"

    const-string v1, "there is something network error"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$6;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;

    const-string v1, "HSPSERVICE"

    const-string v2, "there is something network error"

    invoke-static {v1, v5, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2, v4}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hangame/hsp/HSPUtil$6$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/HSPUtil$6$1;-><init>(Lcom/hangame/hsp/HSPUtil$6;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    goto :goto_0

    :cond_1
    const-string v0, "HSPUtil"

    const-string v1, "there is something network error"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$6;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;

    const-string v1, "HSPSERVICE"

    const-string v2, "there is something network error"

    invoke-static {v1, v5, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2, v4}, Lcom/hangame/hsp/HSPUtil$HSPToastCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_0
.end method
