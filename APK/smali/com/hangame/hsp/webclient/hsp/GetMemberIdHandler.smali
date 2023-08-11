.class public final Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPMyProfile;->loadMyProfile(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V

    return-void
.end method
