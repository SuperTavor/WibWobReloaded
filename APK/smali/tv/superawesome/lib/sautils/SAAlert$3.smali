.class Ltv/superawesome/lib/sautils/SAAlert$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sautils/SAAlert;

.field final synthetic val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sautils/SAAlert;Ltv/superawesome/lib/sautils/SAAlertInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sautils/SAAlert$3;->this$0:Ltv/superawesome/lib/sautils/SAAlert;

    iput-object p2, p0, Ltv/superawesome/lib/sautils/SAAlert$3;->val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert$3;->val$listener:Ltv/superawesome/lib/sautils/SAAlertInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/superawesome/lib/sautils/SAAlertInterface;->saDidClickOnAlertButton(ILjava/lang/String;)V

    return-void
.end method
