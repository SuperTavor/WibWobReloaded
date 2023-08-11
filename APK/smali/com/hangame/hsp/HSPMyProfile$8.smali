.class Lcom/hangame/hsp/HSPMyProfile$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMyProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$8;->this$0:Lcom/hangame/hsp/HSPMyProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    iput-object p3, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;->onUpload(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->access$500()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$image:Landroid/graphics/Bitmap;

    invoke-interface {v0, v3}, Lcom/hangame/hsp/HSPMyProfile$HSPChangeMyProfileListener;->onMyProfileImageChange(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "HSPMyProfile"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPMyProfile$8;->val$callback:Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;->onUpload(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
