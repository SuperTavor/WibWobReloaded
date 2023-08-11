.class final Lcom/hangame/hsp/HSPUtil$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$8;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

    iput-object p2, p0, Lcom/hangame/hsp/HSPUtil$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$8;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;->HSP_ADULT:Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;->onCheckResult(Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;)V

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "HSP_ALREADY_AUTHENTICATED_AS_ADULT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$8;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
