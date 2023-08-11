.class public abstract Lcom/google/android/gms/internal/zzko$zzb;
.super Lcom/google/android/gms/cast/internal/zzb;


# instance fields
.field final synthetic zzXV:Lcom/google/android/gms/internal/zzko;

.field protected zzXu:Lcom/google/android/gms/cast/internal/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzko;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$zzb;->zzXV:Lcom/google/android/gms/internal/zzko;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzko;->zzb(Lcom/google/android/gms/internal/zzko;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/internal/zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method protected zza(Lcom/google/android/gms/cast/internal/zze;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzko$zzb;->execute()V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzko$zzb;->zza(Lcom/google/android/gms/cast/internal/zze;)V

    return-void
.end method

.method public zzmG()Lcom/google/android/gms/cast/internal/zzo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzko$zzb;->zzXu:Lcom/google/android/gms/cast/internal/zzo;

    return-object v0
.end method
