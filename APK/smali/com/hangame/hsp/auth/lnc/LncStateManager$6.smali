.class Lcom/hangame/hsp/auth/lnc/LncStateManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;->this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

    iput-object p2, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inspection.pref"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$6;->this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;->access$000(Lcom/hangame/hsp/auth/lnc/LncStateManager;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    const-string v0, "webview"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getMaintenanceInfoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_gnbShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    return-void
.end method
