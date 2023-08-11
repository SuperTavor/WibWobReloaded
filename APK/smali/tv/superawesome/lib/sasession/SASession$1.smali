.class Ltv/superawesome/lib/sasession/SASession$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sasession/SACapperInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sasession/SASession;

.field final synthetic val$listener:Ltv/superawesome/lib/sasession/SASessionInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sasession/SASessionInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sasession/SASession$1;->this$0:Ltv/superawesome/lib/sasession/SASession;

    iput-object p2, p0, Ltv/superawesome/lib/sasession/SASession$1;->val$listener:Ltv/superawesome/lib/sasession/SASessionInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFindDAUID(I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession$1;->this$0:Ltv/superawesome/lib/sasession/SASession;

    invoke-virtual {v0, p1}, Ltv/superawesome/lib/sasession/SASession;->setDauId(I)V

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession$1;->val$listener:Ltv/superawesome/lib/sasession/SASessionInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession$1;->val$listener:Ltv/superawesome/lib/sasession/SASessionInterface;

    invoke-interface {v0}, Ltv/superawesome/lib/sasession/SASessionInterface;->didFindSessionReady()V

    :cond_0
    return-void
.end method
