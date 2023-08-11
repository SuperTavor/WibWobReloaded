.class public abstract Lcom/google/android/gms/internal/zzko$zzc;
.super Lcom/google/android/gms/internal/zzko$zzb;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;

.field private zzYd:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$zzc;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzko$zzb;-><init>(Lcom/google/android/gms/internal/zzko;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzko$zzc;->zzYd:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance v0, Lcom/google/android/gms/internal/zzko$zzc$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzko$zzc$1;-><init>(Lcom/google/android/gms/internal/zzko$zzc;Lcom/google/android/gms/internal/zzko;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzko$zzc;->zzXu:Lcom/google/android/gms/cast/internal/zzo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzko$zzc;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zzc;->zzYd:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object v0
.end method


# virtual methods
.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko$zzc;->zzr(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzko$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzko$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method
