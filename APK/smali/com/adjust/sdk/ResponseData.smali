.class public abstract Lcom/adjust/sdk/ResponseData;
.super Ljava/lang/Object;


# instance fields
.field public activityKind:Lcom/adjust/sdk/ActivityKind;

.field public adid:Ljava/lang/String;

.field public attribution:Lcom/adjust/sdk/AdjustAttribution;

.field public jsonResponse:Lorg/json/JSONObject;

.field public message:Ljava/lang/String;

.field public success:Z

.field public timestamp:Ljava/lang/String;

.field public willRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 3

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v1

    sget-object v0, Lcom/adjust/sdk/ResponseData$1;->$SwitchMap$com$adjust$sdk$ActivityKind:[I

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/adjust/sdk/UnknownResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/UnknownResponseData;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/SessionResponseData;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/AttributionResponseData;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/adjust/sdk/EventResponseData;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/EventResponseData;-><init>(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/adjust/sdk/ClickResponseData;

    invoke-direct {v0}, Lcom/adjust/sdk/ClickResponseData;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "message:%s timestamp:%s json:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
