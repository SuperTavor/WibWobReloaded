.class Ltv/superawesome/lib/samodelspace/saad/SAResponse$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sajsonparser/SAJsonToList;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/samodelspace/saad/SAResponse;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse$1;->this$0:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic traverseItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse$1;->traverseItem(Lorg/json/JSONObject;)Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-result-object v0

    return-object v0
.end method

.method public traverseItem(Lorg/json/JSONObject;)Ltv/superawesome/lib/samodelspace/saad/SAAd;
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAAd;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
