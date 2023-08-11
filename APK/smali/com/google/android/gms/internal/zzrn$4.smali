.class Lcom/google/android/gms/internal/zzrn$4;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field final synthetic zzaDg:I

.field final synthetic zzbeu:Lcom/google/android/gms/internal/zzrn;

.field final synthetic zzbex:Ljava/lang/String;

.field final synthetic zzbey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrn;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn$4;->zzbeu:Lcom/google/android/gms/internal/zzrn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrn$4;->zzbex:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrn$4;->zzbey:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzrn$4;->zzaDg:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzro;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrn$4;->zza(Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzro;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn$4;->zzbex:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrn$4;->zzbey:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzrn$4;->zzaDg:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzro;->zze(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrn$4;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
