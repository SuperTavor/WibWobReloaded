.class Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$4;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sajsonparser/SAListToJson;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$4;->this$0:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic traverseItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$4;->traverseItem(Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public traverseItem(Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
