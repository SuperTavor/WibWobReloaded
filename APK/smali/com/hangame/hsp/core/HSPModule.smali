.class public final Lcom/hangame/hsp/core/HSPModule;
.super Ljava/lang/Object;


# static fields
.field public static final COIN:Ljava/lang/String; = "HSPCoin"

.field public static final CORE:Ljava/lang/String; = "HSPCore"

.field public static final CORE_HANGAME:Ljava/lang/String; = "HSPCore_Hangame"

.field public static final CORE_KAKAOGAME:Ljava/lang/String; = "HSPCore_Kakaogame"

.field public static final CORE_LINEGAME:Ljava/lang/String; = "HSPCore_Linegame"

.field public static final ITEM_DELIVERY:Ljava/lang/String; = "HSPItemDelivery"

.field public static final PAYMENT:Ljava/lang/String; = "HSPPayment"

.field public static final PROMOTION:Ljava/lang/String; = "HSPPromotion"

.field public static final SNS:Ljava/lang/String; = "HSPSns"

.field public static final VIEW_GLOBAL:Ljava/lang/String; = "HSPView_Global"

.field public static final VIEW_JP:Ljava/lang/String; = "HSPView_JP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkModuleClass(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getModuleVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExistModule(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "HSPCore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.hangame.hsp.HSPCore"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "HSPCore_Hangame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.hangame.hsp.auth.login.hangame.HangameLoginService"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "HSPCore_Linegame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.hangame.hsp.line.HSPLine"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "HSPCore_Kakaogame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.hangame.hsp.kakao.HSPKakao"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "HSPView_Global"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.hangame.hsp.ui.view.GlobalViewInitializer"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "HSPView_JP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.hangame.hsp.ui.view.jp.JpViewInitializer"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_5
    const-string v0, "HSPPayment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.hangame.hsp.payment.HSPPayment"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_6
    const-string v0, "HSPPromotion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.hangame.hsp.cgp.HSPCGP"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_7
    const-string v0, "HSPItemDelivery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.hangame.hsp.itemdelivery.HSPItemDelivery"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_8
    const-string v0, "HSPCoin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.hangame.hsp.coin.HSPCoin"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "HSPSns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.hangame.hsp.HSPSns"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPModule;->checkModuleClass(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
