.class public Ltv/superawesome/lib/sacpi/referral/SAReceiver;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private network:Ltv/superawesome/lib/sanetwork/request/SANetwork;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->context:Landroid/content/Context;

    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    return-void
.end method


# virtual methods
.method public getReferralCustomData(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils;->getCacheBuster()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->context:Landroid/content/Context;

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->getNetworkConnectivity(Landroid/content/Context;)Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "placement"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "line_item"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "creative"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "custom.referred_install"

    aput-object v4, v2, v3

    invoke-static {v2}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->encodeDictAsJsonDict(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getReferralHeader()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Content-Type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "User-Agent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->context:Landroid/content/Context;

    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getReferralInstallSession(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Ltv/superawesome/lib/sasession/SASession;
    .locals 2

    new-instance v0, Ltv/superawesome/lib/sasession/SASession;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltv/superawesome/lib/sasession/SASession;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget v1, p1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    invoke-static {v1}, Ltv/superawesome/lib/sasession/SAConfiguration;->fromValue(I)Ltv/superawesome/lib/sasession/SAConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getReferralUrl(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->getReferralInstallSession(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Ltv/superawesome/lib/sasession/SASession;

    move-result-object v0

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->getReferralCustomData(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/superawesome/lib/sasession/SASession;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/event?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ltv/superawesome/lib/sautils/SAUtils;->formGetQueryFromDict(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseReferralResponse(Landroid/content/Intent;)Ltv/superawesome/lib/samodelspace/saad/SAReferral;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "referrer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->parseReferralResponse(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public parseReferralResponse(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SAReferral;
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    const-string v0, "="

    const-string v1, " : "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3D"

    const-string v2, " : "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\&"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%26"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_source"

    const-string v2, "\"utm_source\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_campaign"

    const-string v2, "\"utm_campaign\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_term"

    const-string v2, "\"utm_term\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_content"

    const-string v2, "\"utm_content\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utm_medium"

    const-string v2, "\"utm_medium\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public sendReferralEvent(Landroid/content/Intent;Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;)V
    .locals 6

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->parseReferralResponse(Landroid/content/Intent;)Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->getReferralUrl(Ltv/superawesome/lib/samodelspace/saad/SAReferral;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->getReferralHeader()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->network:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iget-object v1, p0, Ltv/superawesome/lib/sacpi/referral/SAReceiver;->context:Landroid/content/Context;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;

    invoke-direct {v5, p0, p2}, Ltv/superawesome/lib/sacpi/referral/SAReceiver$1;-><init>(Ltv/superawesome/lib/sacpi/referral/SAReceiver;Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;)V

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ltv/superawesome/lib/sacpi/referral/SAReceiver$SAReceiverInterface;->saDidSendReferralData(Z)V

    goto :goto_0
.end method
