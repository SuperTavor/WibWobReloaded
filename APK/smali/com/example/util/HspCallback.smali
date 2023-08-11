.class public Lcom/example/util/HspCallback;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/HspCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/HspCallback;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/example/util/HspCallback;->b:J

    return-void
.end method

.method private static a()Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPServiceProperties;->getLaunchingState()Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/hangame/hsp/HSPResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x10001

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const/16 v1, 0x1009

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/hangame/hsp/HSPResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const/16 v1, 0x4005

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/hangame/hsp/HSPResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const/16 v1, 0x3001

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0xf002

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native onEndConnectGoogleApi(JZZ)V
.end method

.method private native onEndLoginByLastSno(JZZZZJ)V
.end method

.method private native onEndLoginGameIDP(JZZZZZJ)V
.end method

.method private native onEndLoginGuest(JZZZZJ)V
.end method


# virtual methods
.method public a(Lcom/hangame/hsp/HSPResult;Z)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/util/HspCallback;->a()Z

    move-result v6

    invoke-static {p1}, Lcom/example/util/HspCallback;->a(Lcom/hangame/hsp/HSPResult;)Z

    move-result v7

    invoke-static {p1}, Lcom/example/util/HspCallback;->c(Lcom/hangame/hsp/HSPResult;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/example/util/HspCallback;->b:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v0

    int-to-long v8, v0

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/example/util/HspCallback;->onEndLoginByLastSno(JZZZZJ)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    iget-wide v0, p0, Lcom/example/util/HspCallback;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/example/util/HspCallback;->onEndConnectGoogleApi(JZZ)V

    return-void
.end method

.method public b(Lcom/hangame/hsp/HSPResult;Z)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/util/HspCallback;->a()Z

    move-result v6

    invoke-static {p1}, Lcom/example/util/HspCallback;->a(Lcom/hangame/hsp/HSPResult;)Z

    move-result v7

    invoke-static {p1}, Lcom/example/util/HspCallback;->c(Lcom/hangame/hsp/HSPResult;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/example/util/HspCallback;->b:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v0

    int-to-long v8, v0

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/example/util/HspCallback;->onEndLoginGuest(JZZZZJ)V

    goto :goto_0
.end method

.method public c(Lcom/hangame/hsp/HSPResult;Z)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/util/HspCallback;->a()Z

    move-result v5

    invoke-static {p1}, Lcom/example/util/HspCallback;->a(Lcom/hangame/hsp/HSPResult;)Z

    move-result v6

    invoke-static {p1}, Lcom/example/util/HspCallback;->b(Lcom/hangame/hsp/HSPResult;)Z

    move-result v7

    invoke-static {p1}, Lcom/example/util/HspCallback;->c(Lcom/hangame/hsp/HSPResult;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/example/util/HspCallback;->b:J

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v3

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v0

    int-to-long v8, v0

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/example/util/HspCallback;->onEndLoginGameIDP(JZZZZZJ)V

    goto :goto_0
.end method
