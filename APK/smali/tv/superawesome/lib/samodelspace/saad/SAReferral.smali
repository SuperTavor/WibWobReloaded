.class public Ltv/superawesome/lib/samodelspace/saad/SAReferral;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CPI_DEF_VAL:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public campaignId:I

.field public configuration:I

.field public creativeId:I

.field public lineItemId:I

.field public placementId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral$1;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral$1;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    iput p1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput p2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput p3, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput p4, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput p5, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    if-le v0, v1, :cond_0

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "utm_source"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    const-string v0, "utm_campaign"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    const-string v0, "utm_term"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    const-string v0, "utm_content"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    const-string v0, "utm_medium"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    return-void
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "utm_campaign"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "utm_term"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "utm_content"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "utm_medium"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->configuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->campaignId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->lineItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->creativeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->placementId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToReferralQuery()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->writeToJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->formGetQueryFromDict(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, "%26"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, "%3D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
