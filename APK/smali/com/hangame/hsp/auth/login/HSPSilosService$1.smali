.class final Lcom/hangame/hsp/auth/login/HSPSilosService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/hangame/hsp/HSPResult;Ljava/util/HashMap;)V
    .locals 4

    invoke-static {p2}, Lcom/hangame/hsp/auth/login/HSPSilosService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EXTERNAL_DEVICEID"

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getValPreferenceWithPackg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "HSPSilosService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "prefAdId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EXTERNAL_DEVICEID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v1, "EXTERNAL_DEVICEID"

    const-string v0, "EXTERNAL_DEVICEID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->access$100()Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->access$100()Lcom/hangame/hspls/api/SilosConnectorApi;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hspls/api/SilosConnectorApi;->setAdIdToBiData(Ljava/util/HashMap;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    const-string v0, "HSPSilosService"

    const-string v1, "there is problem with Google library for getting adid"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EXTERNAL_DEVICEID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreferenceWithPackg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
