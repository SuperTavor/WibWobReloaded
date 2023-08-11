.class Lcom/hangame/hsp/HSPUtil$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPUtil$5;

.field final synthetic val$responseJsonData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$5$1;->this$0:Lcom/hangame/hsp/HSPUtil$5;

    iput-object p2, p0, Lcom/hangame/hsp/HSPUtil$5$1;->val$responseJsonData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$5$1;->val$responseJsonData:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "statusCode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "lastAuthDt"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_2
    const-string v0, "Y"

    const-string v4, "isAuthTarget"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/hangame/hsp/HSPUtil$5$1;->this$0:Lcom/hangame/hsp/HSPUtil$5;

    iget-object v3, v3, Lcom/hangame/hsp/HSPUtil$5;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;

    const-string v4, "HSPSERVICE"

    invoke-static {v4}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v2, "statusMsg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/HSPUtil$5$1;->this$0:Lcom/hangame/hsp/HSPUtil$5;

    iget-object v3, v3, Lcom/hangame/hsp/HSPUtil$5;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;

    const-string v4, "HSPSERVICE"

    invoke-static {v4, v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v2, ""

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "HSPUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$5$1;->this$0:Lcom/hangame/hsp/HSPUtil$5;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$5;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;

    const-string v2, "HSPSERVICE"

    const/16 v3, 0x1007

    const-string v4, "there is no Data"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Lcom/hangame/hsp/HSPUtil$HSPHangameCheckUserAuthValidCB;->onCheckResult(Lcom/hangame/hsp/HSPResult;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
