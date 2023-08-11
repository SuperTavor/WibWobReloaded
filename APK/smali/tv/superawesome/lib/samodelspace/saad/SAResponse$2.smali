.class Ltv/superawesome/lib/samodelspace/saad/SAResponse$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sajsonparser/SAListToJson;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/samodelspace/saad/SAResponse;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse$2;->this$0:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic traverseItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse$2;->traverseItem(Ltv/superawesome/lib/samodelspace/saad/SAAd;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public traverseItem(Ltv/superawesome/lib/samodelspace/saad/SAAd;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
