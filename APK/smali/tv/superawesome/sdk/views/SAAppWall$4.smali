.class Ltv/superawesome/sdk/views/SAAppWall$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAAppWall;

.field final synthetic val$isParentalGateEnabledL:Z


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAAppWall;Z)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    iput-boolean p2, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->val$isParentalGateEnabledL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->access$100(Ltv/superawesome/sdk/views/SAAppWall;)Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    move-result-object v0

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->val$isParentalGateEnabledL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    new-instance v2, Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    invoke-direct {v2, v3, p3, v0}, Ltv/superawesome/sdk/views/SAParentalGate;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v1, v2}, Ltv/superawesome/sdk/views/SAAppWall;->access$202(Ltv/superawesome/sdk/views/SAAppWall;Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGate;

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->access$200(Ltv/superawesome/sdk/views/SAAppWall;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    invoke-virtual {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGate;->setListener(Ltv/superawesome/sdk/views/SAParentalGateInterface;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAAppWall;->access$200(Ltv/superawesome/sdk/views/SAAppWall;)Ltv/superawesome/sdk/views/SAParentalGate;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$4;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Ltv/superawesome/sdk/views/SAAppWall;->click(ILjava/lang/String;)V

    goto :goto_0
.end method
