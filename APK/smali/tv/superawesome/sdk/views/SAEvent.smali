.class public enum Ltv/superawesome/sdk/views/SAEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adClicked:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adClosed:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adEnded:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adLoaded:Ltv/superawesome/sdk/views/SAEvent;

.field public static final enum adShown:Ltv/superawesome/sdk/views/SAEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$1;

    const-string v1, "adLoaded"

    invoke-direct {v0, v1, v3}, Ltv/superawesome/sdk/views/SAEvent$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adLoaded:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$2;

    const-string v1, "adFailedToLoad"

    invoke-direct {v0, v1, v4}, Ltv/superawesome/sdk/views/SAEvent$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$3;

    const-string v1, "adAlreadyLoaded"

    invoke-direct {v0, v1, v5}, Ltv/superawesome/sdk/views/SAEvent$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$4;

    const-string v1, "adShown"

    invoke-direct {v0, v1, v6}, Ltv/superawesome/sdk/views/SAEvent$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adShown:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$5;

    const-string v1, "adFailedToShow"

    invoke-direct {v0, v1, v7}, Ltv/superawesome/sdk/views/SAEvent$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$6;

    const-string v1, "adClicked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltv/superawesome/sdk/views/SAEvent$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adClicked:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$7;

    const-string v1, "adEnded"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltv/superawesome/sdk/views/SAEvent$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adEnded:Ltv/superawesome/sdk/views/SAEvent;

    new-instance v0, Ltv/superawesome/sdk/views/SAEvent$8;

    const-string v1, "adClosed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltv/superawesome/sdk/views/SAEvent$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    const/16 v0, 0x8

    new-array v0, v0, [Ltv/superawesome/sdk/views/SAEvent;

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adLoaded:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v1, v0, v3

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v1, v0, v4

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adAlreadyLoaded:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v1, v0, v5

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adShown:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v1, v0, v6

    sget-object v1, Ltv/superawesome/sdk/views/SAEvent;->adFailedToShow:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClicked:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adEnded:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ltv/superawesome/sdk/views/SAEvent;->adClosed:Ltv/superawesome/sdk/views/SAEvent;

    aput-object v2, v0, v1

    sput-object v0, Ltv/superawesome/sdk/views/SAEvent;->$VALUES:[Ltv/superawesome/sdk/views/SAEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtv/superawesome/sdk/views/SAEvent$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltv/superawesome/sdk/views/SAEvent;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/sdk/views/SAEvent;
    .locals 1

    const-class v0, Ltv/superawesome/sdk/views/SAEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/sdk/views/SAEvent;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/sdk/views/SAEvent;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->$VALUES:[Ltv/superawesome/sdk/views/SAEvent;

    invoke-virtual {v0}, [Ltv/superawesome/sdk/views/SAEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/sdk/views/SAEvent;

    return-object v0
.end method
