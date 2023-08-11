.class public Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentResult(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "PaymentSuccess"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MycardResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MycardResultMessage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "MycardPgWebViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MyCard] GetJsonJavaScriptInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MycardPgWebViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MyCard] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-static {v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
