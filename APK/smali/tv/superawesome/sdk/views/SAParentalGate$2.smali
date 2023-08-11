.class Ltv/superawesome/sdk/views/SAParentalGate$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAParentalGate;

.field final synthetic val$endNum:I

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$startNum:I


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAParentalGate;Landroid/widget/EditText;II)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    iput-object p2, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$input:Landroid/widget/EditText;

    iput p3, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$startNum:I

    iput p4, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$endNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$startNum:I

    iget v2, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->val$endNum:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->access$200(Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGateInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAParentalGate;->access$000(Ltv/superawesome/sdk/views/SAParentalGate;)I

    move-result v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SAParentalGate;->access$100(Ltv/superawesome/sdk/views/SAParentalGate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltv/superawesome/sdk/views/SAParentalGateInterface;->parentalGateSuccess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAParentalGate;->access$300(Ltv/superawesome/sdk/views/SAParentalGate;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Oops! That was the wrong answer."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Please seek guidance from a responsible adult to help you continue."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    new-instance v2, Ltv/superawesome/sdk/views/SAParentalGate$2$1;

    invoke-direct {v2, p0}, Ltv/superawesome/sdk/views/SAParentalGate$2$1;-><init>(Ltv/superawesome/sdk/views/SAParentalGate$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->access$200(Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGateInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAParentalGate;->access$000(Ltv/superawesome/sdk/views/SAParentalGate;)I

    move-result v1

    invoke-interface {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGateInterface;->parentalGateCancel(I)V

    goto :goto_0
.end method
