.class Ltv/superawesome/lib/samodelspace/saad/SACreative$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sajsonparser/SAJsonToList;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/samodelspace/saad/SACreative;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/samodelspace/saad/SACreative;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative$1;->this$0:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic traverseItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SACreative$1;->traverseItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverseItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
