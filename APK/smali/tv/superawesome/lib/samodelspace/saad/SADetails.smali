.class public Ltv/superawesome/lib/samodelspace/saad/SADetails;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public base:Ljava/lang/String;

.field public bitrate:I

.field public cdn:Ljava/lang/String;

.field public duration:I

.field public format:Ljava/lang/String;

.field public height:I

.field public image:Ljava/lang/String;

.field public media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public value:I

.field public vast:Ljava/lang/String;

.field public video:Ljava/lang/String;

.field public width:I

.field public zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SADetails$1;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails$1;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SADetails;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    iput v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SADetails;->readFromJson(Lorg/json/JSONObject;)V

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
    .locals 2

    const-string v0, "width"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    const-string v0, "height"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    const-string v0, "name"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    const-string v0, "placement_format"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    const-string v0, "bitrate"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    const-string v0, "duration"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    const-string v0, "value"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    const-string v0, "image"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    const-string v0, "video"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    const-string v0, "tag"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    const-string v0, "zipFile"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    const-string v0, "url"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    const-string v0, "vast"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    const-string v0, "cdn"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->findBaseURLFromResourceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->findBaseURLFromResourceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->findBaseURLFromResourceURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    :cond_2
    const-string v0, "media"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    return-void
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "placement_format"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "value"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "video"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "zipFile"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cdn"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "base"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "vast"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "media"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->writeToJson()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->zip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->cdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->base:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
