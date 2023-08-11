.class public Lcom/hangame/hsp/HSPSns;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPSns"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadIdpAuthTicket(Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/hangame/hsp/HSPSns;->loadIdpAuthTicket(Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static loadIdpAuthTicket(Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-string v0, "HSPSns"

    const-string v1, "loadIdpAuthTicket"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSns$2;

    invoke-direct {v0, p2, p1}, Lcom/hangame/hsp/HSPSns$2;-><init>(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameIdpAuthTicket;->idpCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpAuthTicket;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpAuthTicket;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpAuthTicket;->idpCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/hangame/hsp/HSPSns;->reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static reportIdpAuthTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 4

    const-string v0, "HSPSns"

    const-string v1, "reportIdpAuthTicket"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSns$1;

    invoke-direct {v0, p4, p0, p1, p3}, Lcom/hangame/hsp/HSPSns$1;-><init>(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->idpCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->idpId:Ljava/lang/String;

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameIdpAuthTicket;->idpAuthTicket:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;->idpCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;->idpId:Ljava/lang/String;

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetIdpAuthTicket;->idpAuthTicket:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method
