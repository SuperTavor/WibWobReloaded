.class public Ltv/superawesome/lib/samodelspace/saad/SAResponse;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ads:Ljava/util/List;

.field public format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public placementId:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse$3;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse$3;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "status"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    const-string v0, "placementId"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    const-string v0, "format"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v1}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->fromValue(I)Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    const-string v0, "ads"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SAResponse$1;

    invoke-direct {v1, p0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse$1;-><init>(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    invoke-static {v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getListFromJsonArray(Lorg/json/JSONArray;Ltv/superawesome/lib/sajsonparser/SAJsonToList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    return-void
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "placementId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "format"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ads"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/samodelspace/saad/SAResponse$2;

    invoke-direct {v3, p0}, Ltv/superawesome/lib/samodelspace/saad/SAResponse$2;-><init>(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    invoke-static {v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonArrayFromList(Ljava/util/List;Ltv/superawesome/lib/sajsonparser/SAListToJson;)Lorg/json/JSONArray;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->placementId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
