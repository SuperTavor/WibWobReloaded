.class public final Lcom/hangame/hsp/webclient/hsp/GetPhoneNumberHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetPhoneNumberHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "GetPhoneNumberHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myPhoneNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBCLIENTSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    return-void
.end method
