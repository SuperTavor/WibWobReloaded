.class Lcom/google/android/gms/ads/internal/overlay/zzc$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzBe:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzBe:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzBe:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzBe:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->onPaused()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc$5;->zzBe:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzeU()V

    :cond_0
    return-void
.end method
