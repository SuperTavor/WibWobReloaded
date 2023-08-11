.class Lcom/hangame/hsp/push/HSPPushManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/push/HSPPushManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/push/HSPPushManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/push/HSPPushManager$1;->this$0:Lcom/hangame/hsp/push/HSPPushManager;

    iput-object p2, p0, Lcom/hangame/hsp/push/HSPPushManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/push/HSPPushManager$1;->val$context:Landroid/content/Context;

    const-string v1, "PushService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LauncherAction"

    iget-object v2, p0, Lcom/hangame/hsp/push/HSPPushManager$1;->this$0:Lcom/hangame/hsp/push/HSPPushManager;

    invoke-static {v2}, Lcom/hangame/hsp/push/HSPPushManager;->access$000(Lcom/hangame/hsp/push/HSPPushManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
