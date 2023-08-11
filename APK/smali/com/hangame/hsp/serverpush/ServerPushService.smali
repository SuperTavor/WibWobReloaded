.class public Lcom/hangame/hsp/serverpush/ServerPushService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerPushService"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerServerPushResponseHandler(Lcom/hangame/hsp/serverpush/ServerPushMsgHSP13ResponseHandler;)V
    .locals 2

    const v0, 0xd6e4e9a

    new-instance v1, Lcom/hangame/hsp/serverpush/ServerPushService$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/serverpush/ServerPushService$1;-><init>(Lcom/hangame/hsp/serverpush/ServerPushMsgHSP13ResponseHandler;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->putResponseHooker(ILcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;)V

    return-void
.end method

.method public static registerServerPushResponseHandler(Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;)V
    .locals 2

    const v0, 0xe0ed9fa

    new-instance v1, Lcom/hangame/hsp/serverpush/ServerPushService$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/serverpush/ServerPushService$2;-><init>(Lcom/hangame/hsp/serverpush/ServerPushPacketHSP13ResponseHandler;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->putResponseHooker(ILcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;)V

    return-void
.end method
