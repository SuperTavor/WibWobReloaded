.class Lcom/google/android/gms/drive/internal/zzs$2;
.super Lcom/google/android/gms/drive/internal/zzs$zzb;


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/drive/internal/zzs;

.field final synthetic zzakw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzakv:Lcom/google/android/gms/drive/internal/zzs;

    iput p3, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzakw:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzs$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzs$2;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    iget v2, p0, Lcom/google/android/gms/drive/internal/zzs$2;->zzakw:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzs$zzh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzs$zzh;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
