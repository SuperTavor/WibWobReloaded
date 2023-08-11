.class Ltv/superawesome/sdk/views/SAAppWall$5;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/saevents/SAViewableModule$Listener;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAAppWall;

.field final synthetic val$event:Ltv/superawesome/lib/saevents/SAEvents;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAAppWall;Ltv/superawesome/lib/saevents/SAEvents;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAAppWall$5;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    iput-object p2, p0, Ltv/superawesome/sdk/views/SAAppWall$5;->val$event:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidFindViewOnScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$5;->val$event:Ltv/superawesome/lib/saevents/SAEvents;

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerViewableImpressionEvent()V

    :cond_0
    return-void
.end method
