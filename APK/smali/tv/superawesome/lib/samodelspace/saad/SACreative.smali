.class public Ltv/superawesome/lib/samodelspace/saad/SACreative;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public approved:Z

.field public bundle:Ljava/lang/String;

.field public clickCounterUrl:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public cpm:I

.field public details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

.field public format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public id:I

.field public impressionUrl:Ljava/lang/String;

.field public installUrl:Ljava/lang/String;

.field public live:Z

.field public name:Ljava/lang/String;

.field public osTarget:Ljava/util/List;

.field public payload:Ljava/lang/String;

.field public referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative$3;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative$3;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    iput-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SACreative;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "id"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    const-string v0, "name"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    const-string v0, "cpm"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    const-string v0, "format"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->fromString(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    const-string v0, "live"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    const-string v0, "approved"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    const-string v0, "customPayload"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    const-string v0, "click_url"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "clickUrl"

    invoke-static {p1, v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    :cond_0
    const-string v0, "impression_url"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "impressionUrl"

    invoke-static {p1, v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    :cond_1
    const-string v0, "install_url"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "installUrl"

    invoke-static {p1, v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    :cond_2
    const-string v0, "clickCounterUrl"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    const-string v0, "bundleId"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    const-string v0, "osTarget"

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SACreative$1;

    invoke-direct {v1, p0}, Ltv/superawesome/lib/samodelspace/saad/SACreative$1;-><init>(Ltv/superawesome/lib/samodelspace/saad/SACreative;)V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getListFromJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Ltv/superawesome/lib/sajsonparser/SAJsonToList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    const-string v0, "details"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreative$4;->$SwitchMap$tv$superawesome$lib$samodelspace$saad$SACreativeFormat:[I

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v1}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v0, "referral"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    return-void

    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    const-string v1, "https://ads.superawesome.tv"

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cpm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "format"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "live"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "approved"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "customPayload"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "click_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "clickCounterUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "impression_url"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "installUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "osTarget"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/samodelspace/saad/SACreative$2;

    invoke-direct {v3, p0}, Ltv/superawesome/lib/samodelspace/saad/SACreative$2;-><init>(Ltv/superawesome/lib/samodelspace/saad/SACreative;)V

    invoke-static {v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonArrayFromList(Ljava/util/List;Ltv/superawesome/lib/sajsonparser/SAListToJson;)Lorg/json/JSONArray;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "bundleId"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "details"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SADetails;->writeToJson()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "referral"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;->writeToJson()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->cpm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->live:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->approved:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->payload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->clickCounterUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->installUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->osTarget:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->bundle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
