.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzd;


# instance fields
.field final synthetic zzSE:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic zzSF:Lcom/google/android/gms/auth/api/credentials/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzSF:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzSE:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzSE:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzh;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzb;

    move-result-object v0

    return-object v0
.end method
