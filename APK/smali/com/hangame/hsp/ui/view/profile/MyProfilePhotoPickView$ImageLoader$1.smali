.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;
.super Ljava/util/LinkedHashMap;


# static fields
.field private static final serialVersionUID:J = 0x289d65c69b5a7f3L


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$1200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
