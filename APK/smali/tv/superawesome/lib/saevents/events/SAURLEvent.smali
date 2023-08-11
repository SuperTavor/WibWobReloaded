.class public Ltv/superawesome/lib/saevents/events/SAURLEvent;
.super Ltv/superawesome/lib/saevents/events/SAServerEvent;


# instance fields
.field protected vastUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ltv/superawesome/lib/saevents/events/SAServerEvent;-><init>(Landroid/content/Context;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/sasession/SASession;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/events/SAURLEvent;->vastUrl:Ljava/lang/String;

    iput-object p2, p0, Ltv/superawesome/lib/saevents/events/SAURLEvent;->vastUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/events/SAURLEvent;->vastUrl:Ljava/lang/String;

    return-object v0
.end method
