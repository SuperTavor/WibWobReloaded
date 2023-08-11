.class public Ltv/superawesome/lib/sautils/SAAlert;
.super Ljava/lang/Object;


# static fields
.field public static final CANCEL_BUTTON:I = 0x1

.field public static final OK_BUTTON:I

.field private static instance:Ltv/superawesome/lib/sautils/SAAlert;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private input:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/sautils/SAAlert;

    invoke-direct {v0}, Ltv/superawesome/lib/sautils/SAAlert;-><init>()V

    sput-object v0, Ltv/superawesome/lib/sautils/SAAlert;->instance:Ltv/superawesome/lib/sautils/SAAlert;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/sautils/SAAlert;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method public static getInstance()Ltv/superawesome/lib/sautils/SAAlert;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sautils/SAAlert;->instance:Ltv/superawesome/lib/sautils/SAAlert;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILtv/superawesome/lib/sautils/SAAlertInterface;)V
    .locals 2

    if-eqz p8, :cond_2

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_0

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/superawesome/lib/sautils/SAAlert;->input:Landroid/widget/EditText;

    iget-object v1, p0, Ltv/superawesome/lib/sautils/SAAlert;->input:Landroid/widget/EditText;

    invoke-virtual {v1, p7}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Ltv/superawesome/lib/sautils/SAAlert;->input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_0
    new-instance v1, Ltv/superawesome/lib/sautils/SAAlert$2;

    invoke-direct {v1, p0, p8}, Ltv/superawesome/lib/sautils/SAAlert$2;-><init>(Ltv/superawesome/lib/sautils/SAAlert;Ltv/superawesome/lib/sautils/SAAlertInterface;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_1

    new-instance v1, Ltv/superawesome/lib/sautils/SAAlert$3;

    invoke-direct {v1, p0, p8}, Ltv/superawesome/lib/sautils/SAAlert$3;-><init>(Ltv/superawesome/lib/sautils/SAAlert;Ltv/superawesome/lib/sautils/SAAlertInterface;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert;->dialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SAAlert;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    new-instance p8, Ltv/superawesome/lib/sautils/SAAlert$1;

    invoke-direct {p8, p0}, Ltv/superawesome/lib/sautils/SAAlert$1;-><init>(Ltv/superawesome/lib/sautils/SAAlert;)V

    goto :goto_0
.end method
