.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;
.super Ljava/lang/Object;


# static fields
.field private static final GridViewCellSideLength:I = 0x96

.field private static final GridViewQueryProjection:[Ljava/lang/String;

.field private static final GridViewSortOrder:Ljava/lang/String;

.field private static final HardImageCacheCapacity:I = 0x12c

.field private static final ImageDecoderCount:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->GridViewQueryProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->GridViewQueryProjection:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->GridViewSortOrder:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->GridViewQueryProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->GridViewSortOrder:Ljava/lang/String;

    return-object v0
.end method
