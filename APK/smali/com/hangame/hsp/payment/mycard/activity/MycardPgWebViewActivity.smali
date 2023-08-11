.class public Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;
.super Landroid/app/Activity;


# static fields
.field private static final ANDROID_BUILD_GINGERBREAD:I = 0x9

.field private static final LOGPREF:Ljava/lang/String; = "[MyCard] "

.field private static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MycardPgWebViewActivity"

.field private static final mycardPgUrlAlpha:Ljava/lang/String; = "http://test.mycard520.com.tw/MyCardBilling/"

.field private static final mycardPgUrlReal:Ljava/lang/String; = "http://www.mycard520.com.tw/MyCardBilling/"


# instance fields
.field private bCompletedPayment:Z

.field private intent:Landroid/content/Intent;

.field private mActivity:Landroid/app/Activity;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->bCompletedPayment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public cancelPayment()V
    .locals 4

    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "callled cancelPayment."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;

    const-string v1, "N"

    const-string v2, "524296"

    const-string v3, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->cancelPayment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgWebViewActivity"

    const-string v2, "onBackPressed Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->setRequestedOrientation(I)V

    :cond_0
    iput-object p0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "hsp_payment_mycard_pg_webview"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const-string v0, "hsp.payment.mycard.layout.close"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v3, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$1;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MycardPgWebViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MyCard] MycardPgWebViewActivity onCreate - txId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", productId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", authCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hsp.payment.mycard.layout.pg.webview.webviewer"

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_1
    invoke-static {p0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isRealLaunchingZone()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://www.mycard520.com.tw/MyCardBilling/"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?AuthCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MycardPgWebViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MyCard] loadUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "[MyCard] ActivityTree"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "http://test.mycard520.com.tw/MyCardBilling/"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/hangame/hsp/payment/mycard/activity/view/MycardPaymentWebView;

    iget-object v3, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/hangame/hsp/payment/mycard/activity/view/MycardPaymentWebView;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$GetJsonJavaScriptInterface;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V

    const-string v3, "mycard"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->bCompletedPayment:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->cancelPayment()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    :try_start_0
    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgWebViewActivity"

    const-string v2, "onPause Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "MycardPgWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MyCard] paymentSuccess=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', mycardResultCode=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', mycardResultCode=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PaymentSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MycardResultCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MycardResultMessage"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    const-string v2, "MycardPgWebViewActivity"

    const-string v3, "[MyCard] Mycard purchase success"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Mycard purchase success"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v2, v0, v3, v4}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.successed"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->bCompletedPayment:Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "[MyCard] 3) Call addItem to server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "hsp.payment.msg.processing"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/mycard/command/MycardAddItemCommand;

    iget-object v1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity$2;-><init>(Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/mycard/command/MycardAddItemCommand;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/payment/mycard/command/MycardRequestResultCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardPgWebViewActivity;->bCompletedPayment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MycardPgWebViewActivity"

    const-string v2, "[MyCard] onResult Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    :try_start_0
    const-string v0, "MycardPgWebViewActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MycardPgWebViewActivity"

    const-string v2, "onResume Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
