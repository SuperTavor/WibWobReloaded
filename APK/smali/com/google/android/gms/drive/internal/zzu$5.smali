.class Lcom/google/android/gms/drive/internal/zzu$5;
.super Lcom/google/android/gms/drive/internal/zzt$zza;


# instance fields
.field final synthetic zzakP:Lcom/google/android/gms/drive/internal/zzu;

.field final synthetic zzakQ:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzu$5;->zzakP:Lcom/google/android/gms/drive/internal/zzu;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzu$5;->zzakQ:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzu$5;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzu$5;->zzakQ:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzbt;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
