.class public enum Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final enum appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final enum image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final enum invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final enum rich:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final enum tag:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

.field public static final enum video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$1;

    const-string v1, "invalid"

    invoke-direct {v0, v1, v4, v4}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$2;

    const-string v1, "image"

    invoke-direct {v0, v1, v5, v5}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$3;

    const-string v1, "video"

    invoke-direct {v0, v1, v6, v6}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$4;

    const-string v1, "rich"

    invoke-direct {v0, v1, v7, v7}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->rich:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$5;

    const-string v1, "tag"

    invoke-direct {v0, v1, v8, v8}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->tag:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$6;

    const-string v1, "appwall"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v1, v0, v4

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v1, v0, v5

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v1, v0, v6

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->rich:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v1, v0, v7

    sget-object v1, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->tag:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    aput-object v2, v0, v1

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->$VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    new-instance v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$7;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat$7;-><init>()V

    sput-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILtv/superawesome/lib/samodelspace/saad/SACreativeFormat$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image_with_link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_1
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_2
    const-string v0, "rich_media"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->rich:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_3
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->tag:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_4
    const-string v0, "gamewall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_5
    const-string v0, "appwall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_6
    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0
.end method

.method public static fromValue(I)Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->appwall:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->tag:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->rich:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->video:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->image:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0

    :cond_4
    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->invalid:Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
    .locals 1

    const-class v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->$VALUES:[Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

    invoke-virtual {v0}, [Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;

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

    invoke-virtual {p0}, Ltv/superawesome/lib/samodelspace/saad/SACreativeFormat;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
