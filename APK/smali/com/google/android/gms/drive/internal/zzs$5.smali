.class Lcom/google/android/gms/drive/internal/zzs$5;
.super Lcom/google/android/gms/drive/internal/zzt;


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/drive/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$5;->zzakv:Lcom/google/android/gms/drive/internal/zzs;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzs$5;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/zzs$5$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/drive/internal/zzs$5$1;-><init>(Lcom/google/android/gms/drive/internal/zzs$5;Lcom/google/android/gms/drive/internal/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/zzam;->zze(Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzs$5;->zzz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzz(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BooleanResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/BooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method
