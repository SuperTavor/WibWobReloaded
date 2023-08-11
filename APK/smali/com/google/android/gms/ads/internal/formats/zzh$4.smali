.class Lcom/google/android/gms/ads/internal/formats/zzh$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# instance fields
.field final synthetic zzwO:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzh$4;->zzwO:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzh$4;->zzwO:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zze(Lcom/google/android/gms/ads/internal/formats/zzh;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
