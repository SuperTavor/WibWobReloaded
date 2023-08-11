.class final Lcom/adjust/sdk/Util$1;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/Util$1;->val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/Util$1;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/Util$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    iget-object v0, p0, Lcom/adjust/sdk/Util$1;->val$onDeviceIdRead:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    return-void
.end method
