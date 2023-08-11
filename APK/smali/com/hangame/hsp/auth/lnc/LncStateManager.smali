.class public final Lcom/hangame/hsp/auth/lnc/LncStateManager;
.super Ljava/lang/Object;


# static fields
.field public static final LNC_STATE_INSPECTION_PREF_TAG:Ljava/lang/String; = "inspection.pref"

.field public static final TAG:Ljava/lang/String; = "LncStateManager"


# instance fields
.field private final lock:Lcom/hangame/hsp/util/MutexLock;

.field private mLoginable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/auth/lnc/LncStateManager;)Lcom/hangame/hsp/util/MutexLock;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/auth/lnc/LncStateManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->mLoginable:Z

    return p1
.end method

.method private getLncStateDialog(Landroid/app/Activity;Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;)Landroid/app/AlertDialog$Builder;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "LncStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLncStateDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getStateMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_1

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$2;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_3

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.lnc.status.alert.update.now"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$3;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$3;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_5

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.lnc.status.alert.later"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$4;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$4;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.lnc.status.alert.update.now"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$5;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$5;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq p2, v2, :cond_6

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq p2, v2, :cond_6

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_a

    :cond_6
    const-string v2, "hsp.lnc.status.alert.guide.check"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "inspection.pref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "inspection.pref"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v0, :cond_7

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.detail"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;

    invoke-direct {v3, p0, v2}, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.close"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/hangame/hsp/auth/lnc/LncStateManager$7;

    invoke-direct {v3, p0, v2}, Lcom/hangame/hsp/auth/lnc/LncStateManager$7;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hsp.lnc.status.alert."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v3, :cond_8

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".playable"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".not.playable"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_c

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_b

    :goto_6
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.close"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$8;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$8;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq p2, v2, :cond_d

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-eq p2, v2, :cond_d

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_f

    :cond_d
    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$9;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$9;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_f
    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p2, v2, :cond_11

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_10

    :goto_8
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$10;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$10;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_11
    const-string v2, "LncStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Launching State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "hsp.common.alert.title"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_12

    :goto_9
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/auth/lnc/LncStateManager$11;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$11;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.lnc.status.alert.99"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private isShowUi(Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isShowUiVersionCheck()Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->isShowUiVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/TimestampUtil;->loadLncVersionUpdateTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/util/CalendarUtil;->getCurrentDateString8()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERSION UPDATE CHECK: prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/TimestampUtil;->saveLncVersionUpdateTimeStamp()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->isShowUiMaintenance()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method checkLncState(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "LncStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLncStateDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getServiceProperties()Lcom/hangame/hsp/HSPServiceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPServiceProperties;->getLaunchingState()Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isLoginable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->mLoginable:Z

    invoke-direct {p0, v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;->isShowUi(Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;->getLncStateDialog(Landroid/app/Activity;Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hangame/hsp/auth/lnc/LncStateManager$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager$1;-><init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    iget-boolean v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager;->mLoginable:Z

    return v0
.end method
