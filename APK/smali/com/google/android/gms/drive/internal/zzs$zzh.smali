.class Lcom/google/android/gms/drive/internal/zzs$zzh;
.super Lcom/google/android/gms/drive/internal/zzd;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$zzh;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzs$zzh;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzs$zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->zzrv()Lcom/google/android/gms/drive/Contents;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/zzv;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/zzs$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzs$zzh;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzs$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/zzs$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
