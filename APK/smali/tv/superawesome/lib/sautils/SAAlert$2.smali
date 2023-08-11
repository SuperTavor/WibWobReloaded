.class Ltv/superawesome/lib/sautils/SAAlert$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sautils/SAAlert;

.field final synthetic val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sautils/SAAlert;Ltv/superawesome/lib/sautils/SAAlertInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sautils/SAAlert$2;->this$0:Ltv/superawesome/lib/sautils/SAAlert;

    iput-object p2, p0, Ltv/superawesome/lib/sautils/SAAlert$2;->val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Ltv/superawesome/lib/sautils/SAAlert$2;->val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;

    const/4 v2, 0x0

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert$2;->this$0:Ltv/superawesome/lib/sautils/SAAlert;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAAlert;->access$000(Ltv/superawesome/lib/sautils/SAAlert;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert$2;->this$0:Ltv/superawesome/lib/sautils/SAAlert;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAAlert;->access$000(Ltv/superawesome/lib/sautils/SAAlert;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ltv/superawesome/lib/sautils/SAAlertInterface;->saDidClickOnAlertButton(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
