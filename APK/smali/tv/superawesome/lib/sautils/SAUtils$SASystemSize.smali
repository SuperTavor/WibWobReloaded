.class public enum Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

.field public static final enum phone:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

.field public static final enum tablet:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

.field public static final enum undefined:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$1;

    const-string v1, "undefined"

    invoke-direct {v0, v1, v2}, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->undefined:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$2;

    const-string v1, "phone"

    invoke-direct {v0, v1, v3}, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->phone:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$3;

    const-string v1, "tablet"

    invoke-direct {v0, v1, v4}, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->tablet:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    const/4 v0, 0x3

    new-array v0, v0, [Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->undefined:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    aput-object v1, v0, v2

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->phone:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    aput-object v1, v0, v3

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->tablet:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    aput-object v1, v0, v4

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->$VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtv/superawesome/lib/sautils/SAUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;
    .locals 1

    const-class v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->$VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    invoke-virtual {v0}, [Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    return-object v0
.end method
