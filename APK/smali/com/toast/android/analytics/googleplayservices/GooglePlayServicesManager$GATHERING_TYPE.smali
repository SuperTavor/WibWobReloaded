.class final enum Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

.field public static final enum ADVERTISE_ID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

.field public static final enum NOTHING:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

.field public static final enum UUID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    const-string v1, "ADVERTISE_ID"

    invoke-direct {v0, v1, v2}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->ADVERTISE_ID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    const-string v1, "UUID"

    invoke-direct {v0, v1, v3}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->UUID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v4}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->NOTHING:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->ADVERTISE_ID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->UUID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->NOTHING:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->$VALUES:[Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;
    .locals 1

    const-class v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->$VALUES:[Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    invoke-virtual {v0}, [Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    return-object v0
.end method
