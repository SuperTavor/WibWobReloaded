.class Lcom/google/android/gms/drive/internal/zzv$4;
.super Lcom/google/android/gms/drive/internal/zzt$zza;


# instance fields
.field final synthetic zzakU:Lcom/google/android/gms/drive/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzv$4;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzv$4;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzv$4;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-static {v2}, Lcom/google/android/gms/drive/internal/zzv;->zza(Lcom/google/android/gms/drive/internal/zzv;)Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(IZ)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzbt;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
