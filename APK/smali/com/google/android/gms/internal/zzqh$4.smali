.class Lcom/google/android/gms/internal/zzqh$4;
.super Lcom/google/android/gms/internal/zzqh$zzb;


# instance fields
.field final synthetic zzaSF:Lcom/google/android/gms/internal/zzqh;

.field final synthetic zzaSL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$4;->zzaSF:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqh$4;->zzaSL:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqh$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqh$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqh$4;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$4;->zzaSL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/zze;->zzeq(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqh$4;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
