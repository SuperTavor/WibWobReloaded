.class public Lcom/hangame/hsp/auth/lnc/LncIdpInfo;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "LncIdpInfo"


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channelId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->id:Ljava/lang/String;

    const-string v0, "channelSecret"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->secret:Ljava/lang/String;

    const-string v0, "memo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->reserved:Ljava/lang/String;

    const-string v0, "clientId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method static createIntance(Ljava/util/Map;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LncIdpInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->secret:Ljava/lang/String;

    return-object v0
.end method
