.class final Lcom/hangame/hsp/auth/lnc/LncNoticeManager;
.super Ljava/lang/Object;


# static fields
.field private static final NOTICE_INFO_CONTENT:Ljava/lang/String; = "noticeText"

.field private static final NOTICE_INFO_TITLE:Ljava/lang/String; = "noticeTitle"

.field private static final NOTICE_INFO_URL:Ljava/lang/String; = "infoUrl"

.field private static final TAG:Ljava/lang/String; = "LncNoticeManager"


# instance fields
.field private final lock:Lcom/hangame/hsp/util/MutexLock;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->showAlertDialog(Landroid/app/Activity;Ljava/util/List;I)V

    return-void
.end method

.method private showAlertDialog(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "noticeTitle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "noticeText"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "hsp.common.close"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "hsp.common.detail"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "infoUrl"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v2, "LncNoticeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alert Detail :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$1;-><init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v7, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_0

    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$2;-><init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;-><init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;

    invoke-direct {v0, p0, v7}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;-><init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method showLncNoticeDialog(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLncNotices()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LncNoticeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAlertDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2MapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->showAlertDialog(Landroid/app/Activity;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    return-void
.end method
