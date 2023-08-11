.class public final Lcom/hangame/hsp/util/HSPResultUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPResultUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(Lcom/hangame/hsp/HSPResult;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "hsp.common.error.server.network"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v0, "hsp.common.error.server.timeout"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "hsp.common.error.client.imageencoding"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v0, "hsp.common.error.client.jsonparsing"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, "hsp.common.error.client.outofmemory"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string v0, "hsp.common.error.client.invalidparameter"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const-string v0, "hsp.common.error.client.notinitialized"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const-string v0, "hsp.common.error.client.notamainthread"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const-string v0, "hsp.common.error.launching.gameinfofail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const-string v0, "hsp.common.error.launching.clientversionfail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const-string v0, "hsp.common.error.launching.clientlatestversionexist"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    const-string v0, "hsp.common.error.launching.hangameinspection"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const-string v0, "hsp.common.error.launching.gameinspection"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const-string v0, "hsp.common.error.launching.platforminspection"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const-string v0, "hsp.common.error.launching.blockeddevice"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    const-string v0, "hsp.common.error.launching.notusabledevice"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_10
    const-string v0, "hsp.common.error.hsp.waitinglogin"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_11
    const-string v0, "hsp.common.error.hsp.alreadylogin"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_12
    const-string v0, "hsp.common.error.login.loginfail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "hsp.common.error.login.usercanceled"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "hsp.common.error.login.server.notexistauthdata"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "hsp.common.error.login.server.writeauthdatafail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "hsp.common.error.login.server.invalidusingapi"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "hsp.common.error.login.server.invalidusingloginapi"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "hsp.common.error.login.server.invalidargument"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "hsp.common.error.login.server.invalidsysteminfo"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "hsp.common.error.client.internalerror"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hsp.toast.auth.login.hid.alert.alreadymapped"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const-string v0, "hsp.auth.login.hid.alert.alreadymapped"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "hsp.auth.login.id.alert.alreadymapped"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "hsp.auth.login.hid.alert.withdraw"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "hsp.auth.login.hid.alert.punish"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    :sswitch_1f
    const-string v0, "hsp.auth.deactivated.member.alert"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v1, "hsp.common.error.server.unknown"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7efffffb -> :sswitch_1d
        -0x7efffffa -> :sswitch_1e
        -0x7effff99 -> :sswitch_1b
        -0x7effff90 -> :sswitch_1f
        -0x7eff6000 -> :sswitch_14
        -0x7eff5fff -> :sswitch_15
        -0x7eff5000 -> :sswitch_16
        -0x7eff4fff -> :sswitch_17
        -0x7eff4000 -> :sswitch_18
        -0x7eff3000 -> :sswitch_19
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_5
        0x1004 -> :sswitch_4
        0x1005 -> :sswitch_6
        0x1006 -> :sswitch_2
        0x1007 -> :sswitch_3
        0x1008 -> :sswitch_7
        0x100e -> :sswitch_0
        0x100f -> :sswitch_0
        0x1010 -> :sswitch_0
        0x1011 -> :sswitch_0
        0x1012 -> :sswitch_0
        0x1013 -> :sswitch_0
        0x1014 -> :sswitch_0
        0x2001 -> :sswitch_8
        0x2002 -> :sswitch_9
        0x2003 -> :sswitch_a
        0x2004 -> :sswitch_b
        0x2005 -> :sswitch_c
        0x2006 -> :sswitch_d
        0x2007 -> :sswitch_e
        0x2008 -> :sswitch_f
        0x3001 -> :sswitch_10
        0x3003 -> :sswitch_11
        0x4001 -> :sswitch_12
        0x4005 -> :sswitch_13
        0xf001 -> :sswitch_1a
        0x140005 -> :sswitch_1d
        0x140006 -> :sswitch_1e
        0x140067 -> :sswitch_1b
        0x14006c -> :sswitch_1c
        0x14006d -> :sswitch_1c
        0x140070 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPResultUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/debug/DebugManager;->getCallerTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/util/HSPResultUtil;->getErrorMessage(Lcom/hangame/hsp/HSPResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
