.class public Ltv/superawesome/lib/sacpi/SACPI;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static instance:Ltv/superawesome/lib/sacpi/SACPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/sacpi/SACPI;

    invoke-direct {v0}, Ltv/superawesome/lib/sacpi/SACPI;-><init>()V

    sput-object v0, Ltv/superawesome/lib/sacpi/SACPI;->instance:Ltv/superawesome/lib/sacpi/SACPI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInstance()Ltv/superawesome/lib/sacpi/SACPI;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sacpi/SACPI;->instance:Ltv/superawesome/lib/sacpi/SACPI;

    return-object v0
.end method


# virtual methods
.method public handleInstall(Landroid/content/Context;Ltv/superawesome/lib/sacpi/SACPIInterface;)V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/sasession/SASession;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ltv/superawesome/lib/sasession/SASession;->setConfigurationProduction()V

    invoke-virtual {p0, p1, v0, p2}, Ltv/superawesome/lib/sacpi/SACPI;->handleInstall(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/SACPIInterface;)V

    return-void
.end method

.method public handleInstall(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ljava/lang/String;Ltv/superawesome/lib/sacpi/SACPIInterface;)V
    .locals 9

    if-eqz p4, :cond_1

    move-object v7, p4

    :goto_0
    new-instance v6, Ltv/superawesome/lib/sacpi/install/SAOnce;

    invoke-direct {v6, p1}, Ltv/superawesome/lib/sacpi/install/SAOnce;-><init>(Landroid/content/Context;)V

    new-instance v8, Ltv/superawesome/lib/sacpi/pack/SACheck;

    invoke-direct {v8, p1}, Ltv/superawesome/lib/sacpi/pack/SACheck;-><init>(Landroid/content/Context;)V

    new-instance v2, Ltv/superawesome/lib/sacpi/pack/SAPackage;

    invoke-direct {v2, p1}, Ltv/superawesome/lib/sacpi/pack/SAPackage;-><init>(Landroid/content/Context;)V

    new-instance v3, Ltv/superawesome/lib/sacpi/install/SAInstall;

    invoke-direct {v3, p1}, Ltv/superawesome/lib/sacpi/install/SAInstall;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ltv/superawesome/lib/sacpi/install/SAOnce;->isCPISent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ltv/superawesome/lib/sacpi/SACPI$2;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Ltv/superawesome/lib/sacpi/SACPI$2;-><init>(Ltv/superawesome/lib/sacpi/SACPI;Ltv/superawesome/lib/sacpi/pack/SAPackage;Ltv/superawesome/lib/sacpi/install/SAInstall;Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/install/SAOnce;Ltv/superawesome/lib/sacpi/SACPIInterface;)V

    invoke-virtual {v8, p3, p2, v0}, Ltv/superawesome/lib/sacpi/pack/SACheck;->askServerForPackagesThatGeneratedThisInstall(Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;)V

    :cond_0
    return-void

    :cond_1
    new-instance v7, Ltv/superawesome/lib/sacpi/SACPI$1;

    invoke-direct {v7, p0}, Ltv/superawesome/lib/sacpi/SACPI$1;-><init>(Ltv/superawesome/lib/sacpi/SACPI;)V

    goto :goto_0
.end method

.method public handleInstall(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/SACPIInterface;)V
    .locals 1

    invoke-virtual {p2}, Ltv/superawesome/lib/sasession/SASession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Ltv/superawesome/lib/sacpi/SACPI;->handleInstall(Landroid/content/Context;Ltv/superawesome/lib/sasession/SASession;Ljava/lang/String;Ltv/superawesome/lib/sacpi/SACPIInterface;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->sendReferralEvent(Landroid/content/Intent;Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;)V

    return-void
.end method
