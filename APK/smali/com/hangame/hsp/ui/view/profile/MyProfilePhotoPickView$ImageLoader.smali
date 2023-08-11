.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;
.super Ljava/lang/Object;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDecodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mHardImageCache:Ljava/util/HashMap;

.field private final mImageDecodingRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)V
    .locals 2

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->createHardImageCache()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mImageDecodingRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->startImageDecodingExecutor()Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->createImageDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mDecodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->access$900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$1200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;ILandroid/widget/ImageView;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->hasSameId(ILandroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->loadSingleImageFromMediaStore(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->addImageToCache(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mImageDecodingRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private addImageToCache(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createHardImageCache()Ljava/util/HashMap;
    .locals 4

    new-instance v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;

    const/16 v1, 0x96

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;IFZ)V

    return-object v0
.end method

.method private createImageDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getImageFromCache(Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasSameId(ILandroid/widget/ImageView;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSingleImageFromMediaStore(I)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mContentResolver:Landroid/content/ContentResolver;

    int-to-long v2, p1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mDecodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private requestLoadAndSetImage(IILandroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mImageDecodingRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;IILandroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startImageDecodingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 5

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    new-instance v2, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecoder;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mHardImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->mSoftImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public loadImageToView(IILandroid/widget/ImageView;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->getImageFromCache(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->requestLoadAndSetImage(IILandroid/widget/ImageView;)V

    goto :goto_0
.end method
