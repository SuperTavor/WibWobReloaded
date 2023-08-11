.class Lcom/google/android/gms/internal/zzrn$6;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field final synthetic zzaDg:I

.field final synthetic zzbeu:Lcom/google/android/gms/internal/zzrn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrn;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn$6;->zzbeu:Lcom/google/android/gms/internal/zzrn;

    iput p3, p0, Lcom/google/android/gms/internal/zzrn$6;->zzaDg:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzro;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrn$6;->zza(Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzro;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrn$6;->zzaDg:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzro;->zzkA(I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrn$6;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
