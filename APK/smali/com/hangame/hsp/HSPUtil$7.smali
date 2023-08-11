.class final Lcom/hangame/hsp/HSPUtil$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/app/AlertDialog$Builder;Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/hangame/hsp/HSPUtil$7;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/hangame/hsp/HSPUtil$7;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "HSP_ALREADY_AUTHENTICATED_AS_ADULT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.auth.check.adult.permit"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.auth.check.adult.ok"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPUtil$7$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/HSPUtil$7$1;-><init>(Lcom/hangame/hsp/HSPUtil$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7;->val$builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.auth.check.adult.no"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPUtil$7$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/HSPUtil$7$2;-><init>(Lcom/hangame/hsp/HSPUtil$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$7$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$7$3;-><init>(Lcom/hangame/hsp/HSPUtil$7;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
