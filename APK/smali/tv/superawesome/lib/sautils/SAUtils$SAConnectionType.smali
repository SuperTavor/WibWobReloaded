.class public enum Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum cellular_2g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum cellular_3g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum cellular_4g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum cellular_unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum ethernet:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field public static final enum wifi:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$1;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$2;

    const-string v1, "ethernet"

    invoke-direct {v0, v1, v4}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ethernet:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$3;

    const-string v1, "wifi"

    invoke-direct {v0, v1, v5}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->wifi:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$4;

    const-string v1, "cellular_unknown"

    invoke-direct {v0, v1, v6}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$5;

    const-string v1, "cellular_2g"

    invoke-direct {v0, v1, v7}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_2g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$6;

    const-string v1, "cellular_3g"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_3g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$7;

    const-string v1, "cellular_4g"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_4g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    const/4 v0, 0x7

    new-array v0, v0, [Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ethernet:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->wifi:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_2g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_3g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_4g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    aput-object v2, v0, v1

    sput-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->$VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtv/superawesome/lib/sautils/SAUtils$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;
    .locals 1

    const-class v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->$VALUES:[Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-virtual {v0}, [Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    return-object v0
.end method
