.class Ltv/superawesome/lib/sacpi/pack/SACheck$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sacpi/pack/SACheck;

.field final synthetic val$listener:Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sacpi/pack/SACheck;Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/pack/SACheck$1;->this$0:Ltv/superawesome/lib/sacpi/pack/SACheck;

    iput-object p2, p0, Ltv/superawesome/lib/sacpi/pack/SACheck$1;->val$listener:Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/pack/SACheck$1;->val$listener:Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/pack/SACheck$1;->val$listener:Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/pack/SACheck$1;->this$0:Ltv/superawesome/lib/sacpi/pack/SACheck;

    invoke-virtual {v1, p2}, Ltv/superawesome/lib/sacpi/pack/SACheck;->parseServerResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/superawesome/lib/sacpi/pack/SACheck$SACheckInstallInterface;->saDidGetListOfPackagesToCheck(Ljava/util/List;)V

    :cond_0
    return-void
.end method
