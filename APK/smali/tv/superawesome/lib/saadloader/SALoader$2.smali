.class Ltv/superawesome/lib/saadloader/SALoader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/saadloader/SALoader;

.field final synthetic val$listener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

.field final synthetic val$placementId:I

.field final synthetic val$session:Ltv/superawesome/lib/sasession/SASession;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saadloader/SALoader;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->this$0:Ltv/superawesome/lib/saadloader/SALoader;

    iput p2, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$placementId:I

    iput-object p3, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$session:Ltv/superawesome/lib/sasession/SASession;

    iput-object p4, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$listener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->this$0:Ltv/superawesome/lib/saadloader/SALoader;

    iget v1, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$placementId:I

    iget-object v4, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$session:Ltv/superawesome/lib/sasession/SASession;

    iget-object v5, p0, Ltv/superawesome/lib/saadloader/SALoader$2;->val$listener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/saadloader/SALoader;->processAd(ILjava/lang/String;ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    return-void
.end method
