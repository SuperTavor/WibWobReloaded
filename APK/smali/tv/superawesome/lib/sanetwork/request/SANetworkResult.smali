.class Ltv/superawesome/lib/sanetwork/request/SANetworkResult;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_STATUS:I = -0x1


# instance fields
.field private payload:Ljava/lang/String;

.field private status:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->status:I

    iput p1, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->status:I

    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->payload:Ljava/lang/String;

    return-object v0
.end method

.method getStatus()I
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->status:I

    return v0
.end method

.method isValid()Z
    .locals 2

    iget v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->status:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
