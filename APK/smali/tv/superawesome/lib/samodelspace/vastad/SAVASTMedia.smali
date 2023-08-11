.class public Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public bitrate:I

.field public height:I

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia$1;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia$1;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->readFromJson(Lorg/json/JSONObject;)V

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

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "type"

    invoke-static {p1, v0, v2}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0, v2}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    const-string v0, "bitrate"

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    const-string v0, "width"

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    const-string v0, "height"

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    return-void
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bitrate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
