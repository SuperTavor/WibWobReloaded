.class Ltv/superawesome/lib/sacpi/install/SAInstall$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sacpi/install/SAInstall;

.field final synthetic val$listener:Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sacpi/install/SAInstall;Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/install/SAInstall$1;->this$0:Ltv/superawesome/lib/sacpi/install/SAInstall;

    iput-object p2, p0, Ltv/superawesome/lib/sacpi/install/SAInstall$1;->val$listener:Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/install/SAInstall$1;->val$listener:Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/install/SAInstall$1;->val$listener:Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/install/SAInstall$1;->this$0:Ltv/superawesome/lib/sacpi/install/SAInstall;

    invoke-virtual {v1, p2}, Ltv/superawesome/lib/sacpi/install/SAInstall;->parseServerResponse(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Ltv/superawesome/lib/sacpi/install/SAInstall$SAInstallInterface;->saDidCountAnInstall(Z)V

    :cond_0
    return-void
.end method
