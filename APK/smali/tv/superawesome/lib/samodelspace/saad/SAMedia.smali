.class public Ltv/superawesome/lib/samodelspace/saad/SAMedia;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public html:Ljava/lang/String;

.field public isDownloaded:Z

.field public path:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia$1;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia$1;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    new-instance v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    const-class v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->readFromJson(Lorg/json/JSONObject;)V

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

    const-string v0, "html"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    const-string v0, "path"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    const-string v0, "url"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    const-string v0, "type"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    const-string v0, "isDownloaded"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    const-string v0, "vastAd"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    return-void
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isDownloaded"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vastAd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->writeToJson()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
