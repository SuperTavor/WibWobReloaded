.class public final Lcom/hangame/hsp/core/HSPServiceDomain;
.super Ljava/lang/Object;


# static fields
.field public static final GBGAME:Ljava/lang/String; = "GBGAME"

.field public static final GLOBALGAME:Ljava/lang/String; = "GLOBALGAME"

.field public static final GLOBALGAME_CN:Ljava/lang/String; = "GLOBALGAME_CN"

.field public static final GLOBALGAME_KR:Ljava/lang/String; = "GLOBALGAME_KR"

.field public static final GLOBALGAME_KR_PR:Ljava/lang/String; = "GLOBALGAME_KR_PR"

.field public static final GLOBALGAME_ROYAL:Ljava/lang/String; = "GLOBALGAME_ROYAL"

.field public static final GLOBALGAME_SG:Ljava/lang/String; = "GLOBALGAME_SG"

.field public static final GREEGAME:Ljava/lang/String; = "GREEGAME"

.field public static final HANGAME:Ljava/lang/String; = "HANGAME"

.field public static final KAKAOGAME:Ljava/lang/String; = "KAKAOGAME"

.field public static final LINEGAME:Ljava/lang/String; = "LINEGAME"

.field public static final NEGAME:Ljava/lang/String; = "NEGAME"

.field public static final NEIDGAME:Ljava/lang/String; = "NEIDGAME"

.field public static final TOASTGAME:Ljava/lang/String; = "TOASTGAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceDomain()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isExactlyServiceDomain(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGBGame()Z
    .locals 1

    const-string v0, "GBGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalGame()Z
    .locals 1

    const-string v0, "GLOBALGAME_ROYAL"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLOBALGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGlobalGameCN()Z
    .locals 1

    const-string v0, "GLOBALGAME_CN"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalGameKR()Z
    .locals 1

    const-string v0, "GLOBALGAME_KR"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalGameKR_PR()Z
    .locals 1

    const-string v0, "GLOBALGAME_KR_PR"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalGameRoyal()Z
    .locals 1

    const-string v0, "GLOBALGAME_ROYAL"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalGameSG()Z
    .locals 1

    const-string v0, "GLOBALGAME_SG"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGreeGame()Z
    .locals 1

    const-string v0, "GREEGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHangame()Z
    .locals 1

    const-string v0, "HANGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIdpLogin(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getLoginIdp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKakaoGame()Z
    .locals 1

    const-string v0, "KAKAOGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLineGame()Z
    .locals 1

    const-string v0, "LINEGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNeGame()Z
    .locals 1

    const-string v0, "NEGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isServiceDomain(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isToastGame()Z
    .locals 1

    const-string v0, "TOASTGAME"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isServiceDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLOBALGAME_ROYAL"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isExactlyServiceDomain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
