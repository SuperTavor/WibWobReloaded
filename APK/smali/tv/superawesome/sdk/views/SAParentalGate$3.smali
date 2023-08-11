.class Ltv/superawesome/sdk/views/SAParentalGate$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAParentalGate;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAParentalGate;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAParentalGate$3;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAParentalGate$3;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SAParentalGate;->access$200(Ltv/superawesome/sdk/views/SAParentalGate;)Ltv/superawesome/sdk/views/SAParentalGateInterface;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAParentalGate$3;->this$0:Ltv/superawesome/sdk/views/SAParentalGate;

    invoke-static {v1}, Ltv/superawesome/sdk/views/SAParentalGate;->access$000(Ltv/superawesome/sdk/views/SAParentalGate;)I

    move-result v1

    invoke-interface {v0, v1}, Ltv/superawesome/sdk/views/SAParentalGateInterface;->parentalGateCancel(I)V

    return-void
.end method
