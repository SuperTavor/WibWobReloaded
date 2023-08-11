.class Lcom/google/android/gms/internal/zzqi$1;
.super Lcom/google/android/gms/internal/zzqi$zza;


# instance fields
.field final synthetic zzaSG:Ljava/lang/String;

.field final synthetic zzaSN:I

.field final synthetic zzaSO:Lcom/google/android/gms/internal/zzqi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi$1;->zzaSO:Lcom/google/android/gms/internal/zzqi;

    iput p3, p0, Lcom/google/android/gms/internal/zzqi$1;->zzaSN:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqi$1;->zzaSG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqi$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqi$1;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqi$1;->zzaSN:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqi$1;->zzaSG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzlb$zzb;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqi$1;->zza(Lcom/google/android/gms/common/internal/zzq;)V

    return-void
.end method
