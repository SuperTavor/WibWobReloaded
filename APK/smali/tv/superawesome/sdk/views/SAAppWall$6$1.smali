.class Ltv/superawesome/sdk/views/SAAppWall$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/saadloader/SALoaderInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAAppWall$6;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAAppWall$6;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAAppWall$6$1;->this$0:Ltv/superawesome/sdk/views/SAAppWall$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 3

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->access$400()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$6$1;->this$0:Ltv/superawesome/sdk/views/SAAppWall$6;

    iget v1, v1, Ltv/superawesome/sdk/views/SAAppWall$6;->val$placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->access$500()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$6$1;->this$0:Ltv/superawesome/sdk/views/SAAppWall$6;

    iget v2, v0, Ltv/superawesome/sdk/views/SAAppWall$6;->val$placementId:I

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adLoaded:Ltv/superawesome/sdk/views/SAEvent;

    :goto_1
    invoke-interface {v1, v2, v0}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    return-void

    :cond_0
    invoke-static {}, Ltv/superawesome/sdk/views/SAAppWall;->access$400()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$6$1;->this$0:Ltv/superawesome/sdk/views/SAAppWall$6;

    iget v1, v1, Ltv/superawesome/sdk/views/SAAppWall$6;->val$placementId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

    goto :goto_1
.end method
