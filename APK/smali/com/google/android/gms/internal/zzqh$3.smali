.class Lcom/google/android/gms/internal/zzqh$3;
.super Lcom/google/android/gms/internal/zzqh$zzc;


# instance fields
.field final synthetic zzaSF:Lcom/google/android/gms/internal/zzqh;

.field final synthetic zzaSK:Lcom/google/android/gms/plus/model/moments/Moment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$3;->zzaSF:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqh$3;->zzaSK:Lcom/google/android/gms/plus/model/moments/Moment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqh$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqh$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqh$3;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$3;->zzaSK:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method
