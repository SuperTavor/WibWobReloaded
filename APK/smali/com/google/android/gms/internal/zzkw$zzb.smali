.class abstract Lcom/google/android/gms/internal/zzkw$zzb;
.super Lcom/google/android/gms/internal/zzlb$zza;


# instance fields
.field final synthetic zzZP:Lcom/google/android/gms/internal/zzkw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw$zzb;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkw;->zzc(Lcom/google/android/gms/internal/zzkw;)Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkw$zzb;->zzs(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    move-result-object v0

    return-object v0
.end method

.method protected zzs(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzkw$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzkw$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
