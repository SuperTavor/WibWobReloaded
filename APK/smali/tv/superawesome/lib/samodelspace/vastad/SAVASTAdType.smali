.class public enum Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

.field public static final enum Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

.field public static final enum Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$1;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2, v2}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$2;

    const-string v1, "InLine"

    invoke-direct {v0, v1, v3, v3}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$3;

    const-string v1, "Wrapper"

    invoke-direct {v0, v1, v4, v4}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    const/4 v0, 0x3

    new-array v0, v0, [Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    aput-object v1, v0, v4

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->$VALUES:[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$4;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType$4;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILtv/superawesome/lib/samodelspace/vastad/SAVASTAdType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromValue(I)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Invalid:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
    .locals 1

    const-class v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->$VALUES:[Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v0}, [Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

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

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
