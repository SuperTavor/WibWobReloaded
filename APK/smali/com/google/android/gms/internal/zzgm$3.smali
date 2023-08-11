.class Lcom/google/android/gms/internal/zzgm$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# instance fields
.field final synthetic zzDN:Lcom/google/android/gms/internal/zzgm;

.field final synthetic zzDQ:Lcom/google/android/gms/ads/internal/formats/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/ads/internal/formats/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm$3;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgm$3;->zzDQ:Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 3

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$3;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm$3;->zzDQ:Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/internal/zzcu;Ljava/lang/String;)V

    return-void
.end method
