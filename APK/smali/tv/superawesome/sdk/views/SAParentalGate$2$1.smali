.class Ltv/superawesome/sdk/views/SAParentalGate$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Ltv/superawesome/sdk/views/SAParentalGate$2;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAParentalGate$2;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2$1;->this$1:Ltv/superawesome/sdk/views/SAParentalGate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate$2$1;->this$1:Ltv/superawesome/sdk/views/SAParentalGate$2;

    iget-object v0, v0, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->access$200(Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGateInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$2$1;->this$1:Ltv/superawesome/sdk/views/SAParentalGate$2;

    iget-object v1, v1, Ltv/superawesome/sdk/views/SAParentalGate$2;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAParentalGate;->access$000(Ltv/superawesome/sdk/views/SAParentalGate;)I

    move-result v1

    invoke-interface {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGateInterface;->parentalGateFailure(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
