.class public enum Ltv/superawesome/lib/samodelspace/saad/SACampaignType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

.field public static final enum CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

.field public static final enum CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$1;

    const-string v1, "CPM"

    invoke-direct {v0, v1, v2, v2}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$2;

    const-string v1, "CPI"

    invoke-direct {v0, v1, v3, v3}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    const/4 v0, 0x2

    new-array v0, v0, [Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    aput-object v1, v0, v3

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->$VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$3;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType$3;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILtv/superawesome/lib/samodelspace/saad/SACampaignType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromValue(I)Ltv/superawesome/lib/samodelspace/saad/SACampaignType;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPI:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->CPM:Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SACampaignType;
    .locals 1

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/samodelspace/saad/SACampaignType;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->$VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    invoke-virtual {v0}, [Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/samodelspace/saad/SACampaignType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/saad/SACampaignType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
