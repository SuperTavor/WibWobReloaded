.class public Ltv/superawesome/lib/sautils/SALoadScreen;
.super Ljava/lang/Object;


# static fields
.field private static instance:Ltv/superawesome/lib/sautils/SALoadScreen;


# instance fields
.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/sautils/SALoadScreen;

    invoke-direct {v0}, Ltv/superawesome/lib/sautils/SALoadScreen;-><init>()V

    sput-object v0, Ltv/superawesome/lib/sautils/SALoadScreen;->instance:Ltv/superawesome/lib/sautils/SALoadScreen;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltv/superawesome/lib/sautils/SALoadScreen;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sautils/SALoadScreen;->instance:Ltv/superawesome/lib/sautils/SALoadScreen;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SALoadScreen;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/superawesome/lib/sautils/SALoadScreen;->progress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SALoadScreen;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SALoadScreen;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Wait while loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltv/superawesome/lib/sautils/SALoadScreen;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
