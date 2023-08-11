.class synthetic Lcom/hangame/hsp/payment/core/manager/CallbackManager$5;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$hangame$hsp$payment$core$constant$ClientApiType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->values()[Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$5;->$SwitchMap$com$hangame$hsp$payment$core$constant$ClientApiType:[I

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$5;->$SwitchMap$com$hangame$hsp$payment$core$constant$ClientApiType:[I

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$5;->$SwitchMap$com$hangame$hsp$payment$core$constant$ClientApiType:[I

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->ordinal()I

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
