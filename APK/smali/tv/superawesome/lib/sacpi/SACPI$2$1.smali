.class Ltv/superawesome/lib/sacpi/SACPI$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;


# instance fields
.field final synthetic this$1:Ltv/superawesome/lib/sacpi/SACPI$2;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sacpi/SACPI$2;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/SACPI$2$1;->this$1:Ltv/superawesome/lib/sacpi/SACPI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidCountAnInstall(Z)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/SACPI$2$1;->this$1:Ltv/superawesome/lib/sacpi/SACPI$2;

    iget-object v0, v0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$once:Ltv/superawesome/lib/sacpi/install/SAOnce;

    invoke-virtual {v0}, Ltv/superawesome/lib/sacpi/install/SAOnce;->setCPISent()Z

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/SACPI$2$1;->this$1:Ltv/superawesome/lib/sacpi/SACPI$2;

    iget-object v0, v0, Ltv/superawesome/lib/sacpi/SACPI$2;->val$_listener:Ltv/superawesome/lib/sacpi/SACPIInterface;

    invoke-interface {v0, p1}, Ltv/superawesome/lib/sacpi/SACPIInterface;->saDidCountAnInstall(Z)V

    return-void
.end method
