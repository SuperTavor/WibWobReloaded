.class Ltv/superawesome/lib/saevents/events/SAServerEvent$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/saevents/events/SAServerEvent;

.field final synthetic val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saevents/events/SAServerEvent;Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->this$0:Ltv/superawesome/lib/saevents/events/SAServerEvent;

    iput-object p2, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12e

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;->didTriggerEvent(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAServerEvent$2;->val$listener:Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/superawesome/lib/saevents/events/SAServerEvent$Listener;->didTriggerEvent(Z)V

    goto :goto_0
.end method
