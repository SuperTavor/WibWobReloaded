.class Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/hangame/hsp/ui/view/profile/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;Lcom/hangame/hsp/ui/view/profile/RotateBitmap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->this$0:Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;

    iput-object p2, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->val$bitmap:Lcom/hangame/hsp/ui/view/profile/RotateBitmap;

    iput-boolean p3, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->this$0:Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->val$bitmap:Lcom/hangame/hsp/ui/view/profile/RotateBitmap;

    iget-boolean v2, p0, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/view/profile/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/hangame/hsp/ui/view/profile/RotateBitmap;Z)V

    return-void
.end method
