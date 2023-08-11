.class Lcom/google/android/gms/internal/zzqi$5;
.super Lcom/google/android/gms/internal/zzqi$zza;


# instance fields
.field final synthetic zzaSO:Lcom/google/android/gms/internal/zzqi;

.field final synthetic zzaSQ:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi$5;->zzaSO:Lcom/google/android/gms/internal/zzqi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqi$5;->zzaSQ:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqi$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqi$5;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi$5;->zzaSQ:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zze;->zzd(Lcom/google/android/gms/internal/zzlb$zzb;[Ljava/lang/String;)V

    return-void
.end method
