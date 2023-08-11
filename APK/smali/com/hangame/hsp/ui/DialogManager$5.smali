.class final Lcom/hangame/hsp/ui/DialogManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/DialogManager$5;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p2, p0, Lcom/hangame/hsp/ui/DialogManager$5;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$5;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/DialogManager;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$5;->val$result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$300()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/ui/DialogManager$5$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/ui/DialogManager$5$1;-><init>(Lcom/hangame/hsp/ui/DialogManager$5;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
