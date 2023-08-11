.class public Lcom/toast/android/analytics/model/RequestData;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "RequestData"


# instance fields
.field mId:I

.field mJsonData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;
    .locals 2

    new-instance v0, Lcom/toast/android/analytics/model/RequestData;

    invoke-direct {v0}, Lcom/toast/android/analytics/model/RequestData;-><init>()V

    invoke-static {p0}, Lcom/toast/android/analytics/common/utils/JsonUtils;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/model/RequestData;->setJsonData(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/model/RequestData;->mId:I

    return v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/model/RequestData;->mJsonData:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/toast/android/analytics/model/RequestData;->mId:I

    return-void
.end method

.method public setJsonData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/model/RequestData;->mJsonData:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/model/RequestData;->mJsonData:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/model/RequestData;->mJsonData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\njson : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/toast/android/analytics/model/RequestData;->mJsonData:Ljava/lang/String;

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/JsonUtils;->getPrettyJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDeviceId(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "did"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/model/RequestData;->setJsonData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RequestData"

    const-string v2, "updateDeviceId() fail..."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateUserId(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/model/RequestData;->setJsonData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RequestData"

    const-string v2, "updateUserId() fail..."

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
