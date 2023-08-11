.class Ltv/superawesome/lib/sacpi/SACPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sacpi/SACPI;

.field final synthetic val$_listener:Ltv/superawesome/lib/sacpi/SACPIInterface;

.field final synthetic val$install:Ltv/superawesome/lib/sacpi/install/SAInstall;

.field final synthetic val$once:Ltv/superawesome/lib/sacpi/install/SAOnce;

.field final synthetic val$pack:Ltv/superawesome/lib/sacpi/pack/SAPackage;

.field final synthetic val$session:Ltv/superawesome/lib/sasession/SASession;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sacpi/SACPI;Ltv/superawesome/lib/sacpi/pack/SAPackage;Ltv/superawesome/lib/sacpi/install/SAInstall;Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/install/SAOnce;Ltv/superawesome/lib/sacpi/SACPIInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->this$0:Ltv/superawesome/lib/sacpi/SACPI;

    iput-object p2, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$pack:Ltv/superawesome/lib/sacpi/pack/SAPackage;

    iput-object p3, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$install:Ltv/superawesome/lib/sacpi/install/SAInstall;

    iput-object p4, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$target:Ljava/lang/String;

    iput-object p5, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$session:Ltv/superawesome/lib/sasession/SASession;

    iput-object p6, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$once:Ltv/superawesome/lib/sacpi/install/SAOnce;

    iput-object p7, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$_listener:Ltv/superawesome/lib/sacpi/SACPIInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetListOfPackagesToCheck(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$pack:Ltv/superawesome/lib/sacpi/pack/SAPackage;

    invoke-virtual {v0, p1}, Ltv/superawesome/lib/sacpi/pack/SAPackage;->findFirstPackageOnDeviceFrom(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$install:Ltv/superawesome/lib/sacpi/install/SAInstall;

    iget-object v2, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$target:Ljava/lang/String;

    iget-object v3, p0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$session:Ltv/superawesome/lib/sasession/SASession;

    new-instance v4, Ltv/superawesome/lib/sacpi/SACPI$2$1;

    invoke-direct {v4, p0}, Ltv/superawesome/lib/sacpi/SACPI$2$1;-><init>(Ltv/superawesome/lib/sacpi/SACPI$2;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Ltv/superawesome/lib/sacpi/install/SAInstall;->sendInstallEventToServer(Ljava/lang/String;Ljava/lang/String;Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;)V

    return-void
.end method
