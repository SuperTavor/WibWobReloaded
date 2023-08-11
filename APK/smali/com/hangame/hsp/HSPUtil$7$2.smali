.class Lcom/hangame/hsp/HSPUtil$7$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPUtil$7;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$7;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$7$2;->this$0:Lcom/hangame/hsp/HSPUtil$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$7$2;->this$0:Lcom/hangame/hsp/HSPUtil$7;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$7;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;->HSP_KID_NOT_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithAgeRequirementCB;->onCheckResult(Lcom/hangame/hsp/HSPUtil$HSPAgeRequirement;)V

    return-void
.end method
