.class Lcom/google/android/gms/drive/internal/zzab$zzb;
.super Lcom/google/android/gms/drive/internal/zzd;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$zzb;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzb;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzab$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->zzrE()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/zzp;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/zzab$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzb;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzab$zzc;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/zzab$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
