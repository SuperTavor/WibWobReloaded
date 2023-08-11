.class Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$602(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->incrementNrRetries()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->setOnDisk(Z)V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$800(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->moveToBackOfQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$700(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V

    return-void
.end method

.method public onFinish(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getUrlKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    const-string v1, "MyPreferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getResponses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v2

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;->saDidDownloadFile(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->setOnDisk(Z)V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->clearResponses()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0, v3}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$602(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$700(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0, v3}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$602(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->incrementNrRetries()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->setOnDisk(Z)V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$800(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->moveToBackOfQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$700(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->onFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method public taskToExecute()Ljava/lang/Boolean;
    .locals 14

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getUrlKey()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    :try_start_2
    iget-object v6, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    const/16 v6, 0x1000

    new-array v8, v6, [B

    const-wide/16 v6, 0x0

    :goto_1
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    int-to-long v10, v9

    add-long/2addr v6, v10

    long-to-float v10, v6

    int-to-float v11, v5

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-ltz v10, :cond_1

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v11}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$100(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$102(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    const-string v11, "SuperAwesome"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v11, 0x19

    if-lt v10, v11, :cond_2

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v11}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$200(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$202(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    const-string v11, "SuperAwesome"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v11, 0x32

    if-lt v10, v11, :cond_3

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v11}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$300(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$302(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    const-string v11, "SuperAwesome"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v11, 0x4b

    if-lt v10, v11, :cond_4

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v11}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$400(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$402(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    const-string v11, "SuperAwesome"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v11, 0x64

    if-lt v10, v11, :cond_5

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-static {v11}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$500(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->access$502(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z

    const-string v11, "SuperAwesome"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " %"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :goto_2
    move v3, v4

    :cond_6
    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v2, v1

    goto :goto_2
.end method

.method public bridge synthetic taskToExecute()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;->taskToExecute()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
