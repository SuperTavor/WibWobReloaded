.class public Ltv/superawesome/lib/samodelspace/saad/SAAd;
.super Ltv/superawesome/lib/sajsonparser/SABaseObject;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public advertiserId:I

.field public appId:I

.field public campaignId:I

.field public campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

.field public configuration:I

.field public creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

.field public device:Ljava/lang/String;

.field public error:I

.field public isFallback:Z

.field public isFill:Z

.field public isHouse:Z

.field public isPadlockVisible:Z

.field public isSafeAdApproved:Z

.field public isTest:Z

.field public lineItemId:I

.field public moat:D

.field public placementId:I

.field public publisherId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAAd$1;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd$1;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iput p1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput p2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-static {p3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(IILorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iput p1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput p2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-virtual {p0, p3}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v4, 0x3fc999999999999aL    # 0.2

    iput-wide v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-static {p1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ltv/superawesome/lib/sajsonparser/SABaseObject;-><init>()V

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    iput-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/samodelspace/saad/SAAd;->readFromJson(Lorg/json/JSONObject;)V

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SAAd$2;->$SwitchMap$tv$superawesome$lib$samodelspace$saad$SACreativeFormat:[I

    iget-object v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v3, v3, Ltv/superawesome/lib/samodelspace/saad/SACreative;->format:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v3}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->vast:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-boolean v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->tag:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->html:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-boolean v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "error"

    iget v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    invoke-static {p1, v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    const-string v2, "advertiserId"

    iget v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-static {p1, v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    const-string v2, "publisherId"

    iget v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-static {p1, v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    const-string v2, "app"

    iget v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-static {p1, v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    const-string v2, "moat"

    iget-wide v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    double-to-int v3, v4

    mul-int/lit8 v3, v3, 0x64

    invoke-static {p1, v2, v3}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "moat"

    iget-wide v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    invoke-static {p1, v3, v4, v5}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v4

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    iget-wide v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    const-string v0, "line_item_id"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    const-string v0, "campaign_id"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    const-string v0, "placementId"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    const-string v0, "configuration"

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    const-string v0, "campaign_type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->fromValue(I)Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const-string v0, "test"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    const-string v0, "is_fallback"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    const-string v0, "is_fill"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    const-string v0, "is_house"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    const-string v0, "safe_ad_approved"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    const-string v0, "show_padlock"

    iget-boolean v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    const-string v0, "device"

    iget-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    const-string v0, "creative"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0, v1}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-direct {v1, v0}, Ltv/superawesome/lib/samodelspace/saad/SACreative;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v6, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    iget v1, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    iget v3, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    iget-object v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->id:I

    iget v5, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-direct/range {v0 .. v5}, Ltv/superawesome/lib/samodelspace/saad/SAReferral;-><init>(IIIII)V

    iput-object v0, v6, Ltv/superawesome/lib/samodelspace/saad/SACreative;->referral:Ltv/superawesome/lib/samodelspace/saad/SAReferral;

    return-void

    :cond_0
    iget-wide v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    goto/16 :goto_0
.end method

.method public writeToJson()Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "advertiserId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "publisherId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "moat"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "line_item_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "campaign_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "placementId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "configuration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "campaign_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "test"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "is_fill"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "is_house"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "safe_ad_approved"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "show_padlock"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-boolean v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "creative"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/saad/SACreative;->writeToJson()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "device"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->error:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->advertiserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->publisherId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->lineItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->placementId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->configuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->moat:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->campaignType:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isTest:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFallback:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isFill:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isHouse:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isSafeAdApproved:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->isPadlockVisible:Z

    if-eqz v0, :cond_5

    :goto_5
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
