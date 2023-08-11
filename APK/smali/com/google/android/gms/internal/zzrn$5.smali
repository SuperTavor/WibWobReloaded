.class Lcom/google/android/gms/internal/zzrn$5;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field final synthetic zzbeu:Lcom/google/android/gms/internal/zzrn;

.field final synthetic zzbez:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn$5;->zzbeu:Lcom/google/android/gms/internal/zzrn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrn$5;->zzbez:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzro;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrn$5;->zza(Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzro;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$5;->zzbez:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzro;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrn$5;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
