.class public Ltv/superawesome/lib/saevents/SAMoatModule;
.super Ljava/lang/Object;


# instance fields
.field private ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field private moatInstance:Ljava/lang/Object;

.field private moatLimiting:Z


# direct methods
.method public constructor <init>(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatLimiting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    iput-object p1, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    return-void
.end method


# virtual methods
.method public disableMoatLimiting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatLimiting:Z

    return-void
.end method

.method public isMoatAllowed()Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-wide v4, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    iget-boolean v1, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatLimiting:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatLimiting:Z

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public registerDisplayMoatEvent(Landroid/app/Activity;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 6

    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/SAMoatModule;->isMoatAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "advertiserId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lineItemId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "creativeId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placementId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "publisherId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v3, v3, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const-string v2, "registerDisplayMoatEvent"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/webkit/WebView;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public registerVideoMoatEvent(Landroid/app/Activity;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/superawesome/lib/saevents/SAMoatModule;->isMoatAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "advertiserId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "campaignId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lineItemId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "creativeId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "placementId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "publisherId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const-string v3, "registerVideoMoatEvent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/widget/VideoView;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/media/MediaPlayer;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/util/HashMap;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public unregisterDisplayMoatEvent()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "unregisterDisplayMoatEvent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public unregisterVideoMoatEvent()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "tv.superawesome.lib.samoatevents.SAMoatEvents"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "unregisterVideoMoatEvent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAMoatModule;->moatInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
