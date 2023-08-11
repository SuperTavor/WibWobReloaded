.class public final Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceLoginHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsplsp/DeviceLoginHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPLoginService;->deviceLogin(Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method
