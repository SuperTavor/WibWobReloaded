.class public Ltv/superawesome/sdk/views/SAParentalGate;
.super Ljava/lang/Object;


# static fields
.field private static final RAND_MAX:I = 0x63

.field private static final RAND_MIN:I = 0x32

.field private static final SA_CHALLANGE_ALERTVIEW_CANCELBUTTON_TITLE:Ljava/lang/String; = "Cancel"

.field private static final SA_CHALLANGE_ALERTVIEW_CONTINUEBUTTON_TITLE:Ljava/lang/String; = "Continue"

.field private static final SA_CHALLANGE_ALERTVIEW_MESSAGE:Ljava/lang/String; = "Please solve the following problem to continue: "

.field private static final SA_CHALLANGE_ALERTVIEW_TITLE:Ljava/lang/String; = "Parental Gate"

.field private static final SA_ERROR_ALERTVIEW_CANCELBUTTON_TITLE:Ljava/lang/String; = "Ok"

.field private static final SA_ERROR_ALERTVIEW_MESSAGE:Ljava/lang/String; = "Please seek guidance from a responsible adult to help you continue."

.field private static final SA_ERROR_ALERTVIEW_TITLE:Ljava/lang/String; = "Oops! That was the wrong answer."


# instance fields
.field private c:Landroid/content/Context;

.field private destination:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog;

.field private listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

.field private position:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->dialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->position:I

    iput-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->destination:Ljava/lang/String;

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->c:Landroid/content/Context;

    iput p2, p0, Ltv/superawesome/sdk/views/SAParentalGate;->position:I

    iput-object p3, p0, Ltv/superawesome/sdk/views/SAParentalGate;->destination:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/sdk/views/SAParentalGate$1;

    invoke-direct {v0, p0}, Ltv/superawesome/sdk/views/SAParentalGate$1;-><init>(Ltv/superawesome/sdk/views/SAParentalGate;)V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/sdk/views/SAParentalGate;)I
    .locals 1

    iget v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->position:I

    return v0
.end method

.method static synthetic access$100(Ltv/superawesome/sdk/views/SAParentalGate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->destination:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGateInterface;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    return-object v0
.end method

.method static synthetic access$300(Ltv/superawesome/sdk/views/SAParentalGate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public setListener(Ltv/superawesome/sdk/views/SAParentalGateInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    return-void

    :cond_0
    iget-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    goto :goto_0
.end method

.method show()V
    .locals 6

    const/16 v3, 0x63

    const/16 v2, 0x32

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->listener:Ltv/superawesome/sdk/views/SAParentalGateInterface;

    iget v1, p0, Ltv/superawesome/sdk/views/SAParentalGate;->position:I

    invoke-interface {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGateInterface;->parentalGateOpen(I)V

    invoke-static {v2, v3}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v0

    invoke-static {v2, v3}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAParentalGate;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Parental Gate"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please solve the following problem to continue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Ltv/superawesome/sdk/views/SAParentalGate;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v4, "Continue"

    new-instance v5, Ltv/superawesome/sdk/views/SAParentalGate$2;

    invoke-direct {v5, p0, v3, v0, v1}, Ltv/superawesome/sdk/views/SAParentalGate$2;-><init>(Ltv/superawesome/sdk/views/SAParentalGate;Landroid/widget/EditText;II)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    new-instance v1, Ltv/superawesome/sdk/views/SAParentalGate$3;

    invoke-direct {v1, p0}, Ltv/superawesome/sdk/views/SAParentalGate$3;-><init>(Ltv/superawesome/sdk/views/SAParentalGate;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
