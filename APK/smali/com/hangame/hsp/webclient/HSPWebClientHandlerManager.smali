.class public final Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;
.super Ljava/lang/Object;


# static fields
.field private static final SCHEME_DELEMETER:Ljava/lang/String; = "://"

.field private static final SCHEME_HSP:Ljava/lang/String; = "HSP"

.field private static final SCHEME_HSPLSP:Ljava/lang/String; = "HSPLSP"

.field private static final SCHEME_HSPUI:Ljava/lang/String; = "HSPUI"

.field private static final TAG:Ljava/lang/String; = "HSPWebClientHandlerManager"

.field private static final sHandlerList:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->sHandlerList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HSPLSP"

    const-string v1, "ShowUserProfile"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/ShowUserProfileHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/ShowUserProfileHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForIDPLogin"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/IDPLoginHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/IDPLoginHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForMappingDeviceToIDPID"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForDeviceLogin"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForGuestLogin"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/GuestLoginHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/GuestLoginHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForAgree"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/LaunchWelcomeViewHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/LaunchWelcomeViewHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSPLSP"

    const-string v1, "ProcessCompletionForReleaseDevice"

    new-instance v2, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "getMemeberNo"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "getMemeberId"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "GetUserHID"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "getNoticeLastReadTime"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "GetNoticeLastReadTime"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "setNoticeLastReadTime"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "SetNoticeLastReadTime"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "launchGame"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "OpenGame"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "launchStore"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "DownloadGame"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/CheckGameInstalledHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/CheckGameInstalledHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "checkGameInstalled"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "CanOpenURLScheme"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "URLScheme"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "setOrientation"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "openBrowser"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/OpenBrowserHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/OpenBrowserHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/CloseViewHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/CloseViewHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "closeView"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "close"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "closeAllView"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/CloseAllViewHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/GetTicketHandler;

    invoke-direct {v0}, Lcom/hangame/hsp/webclient/hsp/GetTicketHandler;-><init>()V

    const-string v1, "HSP"

    const-string v2, "getTicket"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "GetSessionAuthData"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "GetSNOLoggedIn"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v1, "HSPLSP"

    const-string v2, "GetUserNo"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "log"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/LogHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/LogHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "getPhoneNumber"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/GetPhoneNumberHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/GetPhoneNumberHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    const-string v0, "HSP"

    const-string v1, "getPaycoSmsAuthInfo"

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;

    invoke-direct {v2}, Lcom/hangame/hsp/webclient/hsp/GetPaycoSmsAuthInfoHandler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V

    return-void
.end method

.method public static isSupportedURI(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/hangame/hsp/util/UriData;->createUriData(Ljava/lang/String;)Lcom/hangame/hsp/util/UriData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPWebClientHandlerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri parsing is failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "HSPUI"

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->sHandlerList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 3

    invoke-static {p0}, Lcom/hangame/hsp/util/UriData;->createUriData(Ljava/lang/String;)Lcom/hangame/hsp/util/UriData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HSPWebClientHandlerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri parsing is failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$1;-><init>(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HSPUI"

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getParameter()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/util/Map;)V

    new-instance v0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;

    invoke-direct {v0, v1, p1}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;-><init>(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->sHandlerList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/webclient/HSPWebClientHandler;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;

    invoke-direct {v1, v0, p0, p1}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;-><init>(Lcom/hangame/hsp/webclient/HSPWebClientHandler;Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$5;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$5;-><init>(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeWebClientHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPWebClientHandlerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeHandler("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->sHandlerList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setWebClientHandler(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/webclient/HSPWebClientHandler;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPWebClientHandlerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHandler("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager;->sHandlerList:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
