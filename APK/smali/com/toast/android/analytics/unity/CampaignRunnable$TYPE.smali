.class public final enum Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

.field public static final enum HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

.field public static final enum SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    const-string v1, "SHOW_CAMPAIGN"

    invoke-direct {v0, v1, v2}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    new-instance v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    const-string v1, "HIDE_CAMPAIGN"

    invoke-direct {v0, v1, v3}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->$VALUES:[Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;
    .locals 1

    const-class v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->$VALUES:[Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-virtual {v0}, [Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    return-object v0
.end method
