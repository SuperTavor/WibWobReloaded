.class public final Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editProfile()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static editSocial()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loginType()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameSG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readContacts()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGBGame()Z

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

.method public static sendNeloBi()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportChangeGuestMemberNo()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMapping()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportRemapping()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportResetAccount()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useHangameProfileImage()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGBGame()Z

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
