.class public final Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetPaycoSmsAuthInfoHandler"

.field private static mActivity:Landroid/app/Activity;

.field private static mCallback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field private static mIsRegisted:Z

.field private static mUrl:Ljava/lang/String;

.field private static smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mIsRegisted:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "GetPaycoSmsAuthInfoHandler"

    const-string v1, "unregisterReceiver : HSPSmsReceiver"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mIsRegisted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 3

    sput-object p1, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mUrl:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mActivity:Landroid/app/Activity;

    sput-object p2, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mCallback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    sget-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/util/HSPSmsReceiver;

    sget-object v1, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/hangame/hsp/util/HSPSmsReceiver;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;)V

    sput-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    const-string v0, "GetPaycoSmsAuthInfoHandler"

    const-string v1, "registerReceiver : HSPSmsReceiver."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->smsReceiver:Lcom/hangame/hsp/util/HSPSmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mIsRegisted:Z

    :cond_0
    return-void
.end method

.method public sendResultToWeb(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBCLIENTSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;->mCallback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-interface {v2, v0, v1}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
