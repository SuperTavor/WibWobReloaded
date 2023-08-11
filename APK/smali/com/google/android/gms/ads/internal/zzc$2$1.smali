.class Lcom/google/android/gms/ads/internal/zzc$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic zzoE:Lcom/google/android/gms/ads/internal/zze;

.field final synthetic zzoF:Lcom/google/android/gms/ads/internal/zzc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc$2;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$2$1;->zzoF:Lcom/google/android/gms/ads/internal/zzc$2;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$2$1;->zzoE:Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2$1;->zzoE:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zze;->recordClick()V

    const/4 v0, 0x0

    return v0
.end method
