.class synthetic Lcom/toast/android/analytics/unity/CampaignRunnable$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$toast$android$analytics$unity$CampaignRunnable$TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->values()[Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$1;->$SwitchMap$com$toast$android$analytics$unity$CampaignRunnable$TYPE:[I

    :try_start_0
    sget-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$1;->$SwitchMap$com$toast$android$analytics$unity$CampaignRunnable$TYPE:[I

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->SHOW_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-virtual {v1}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/toast/android/analytics/unity/CampaignRunnable$1;->$SwitchMap$com$toast$android$analytics$unity$CampaignRunnable$TYPE:[I

    sget-object v1, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->HIDE_CAMPAIGN:Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;

    invoke-virtual {v1}, Lcom/toast/android/analytics/unity/CampaignRunnable$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
