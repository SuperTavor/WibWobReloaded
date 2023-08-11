.class Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sacpi/referral/SAReceiver;

.field final synthetic val$listener:Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sacpi/referral/SAReceiver;Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;->this$0:Ltv/superawesome/lib/sacpi/referral/SAReceiver;

    iput-object p2, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;->val$listener:Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;->val$listener:Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;->val$listener:Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;

    invoke-interface {v0, p3}, Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;->saDidSendReferralData(Z)V

    :cond_0
    return-void
.end method
