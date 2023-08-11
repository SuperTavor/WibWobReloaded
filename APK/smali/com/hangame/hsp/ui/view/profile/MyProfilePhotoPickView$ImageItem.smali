.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;
.super Ljava/lang/Object;


# instance fields
.field private id:I

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->id:I

    iput-object p3, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->path:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;ILjava/lang/String;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->id:I

    return v0
.end method
