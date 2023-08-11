.class public Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public events:Ljava/util/List;

.field public media:Ljava/util/List;

.field public redirect:Ljava/lang/String;

.field public type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$5;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$5;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    const-class v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    sget-object v2, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "redirect"

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->fromValue(I)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    const-string v0, "media"

    new-instance v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$1;

    invoke-direct {v1, p0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$1;-><init>(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getListFromJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Ltv/superawesome/lib/sajsonparser/SAJsonToList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    const-string v0, "events"

    new-instance v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$2;

    invoke-direct {v1, p0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$2;-><init>(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getListFromJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Ltv/superawesome/lib/sajsonparser/SAJsonToList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    return-void
.end method

.method public sumAd(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 2

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    iget-object v1, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    iget-object v1, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "redirect"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "media"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$3;

    invoke-direct {v3, p0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$3;-><init>(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonArrayFromList(Ljava/util/List;Ltv/superawesome/lib/sajsonparser/SAListToJson;)Lorg/json/JSONArray;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "events"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    new-instance v3, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$4;

    invoke-direct {v3, p0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd$4;-><init>(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonArrayFromList(Ljava/util/List;Ltv/superawesome/lib/sajsonparser/SAListToJson;)Lorg/json/JSONArray;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
