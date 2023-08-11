.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$2;
.super Lcom/google/android/gms/auth/api/credentials/internal/zzd;


# instance fields
.field final synthetic zzSF:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

.field final synthetic zzSH:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$2;->zzSF:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$2;->zzSH:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$2;->zzSH:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzh;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$2;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
