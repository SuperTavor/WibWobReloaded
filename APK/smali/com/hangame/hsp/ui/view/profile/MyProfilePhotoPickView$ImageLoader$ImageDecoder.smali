.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$2000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$AbstractRequest;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$AbstractRequest;->doRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyProfilePhotoPickView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
