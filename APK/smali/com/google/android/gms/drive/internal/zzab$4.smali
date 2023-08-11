.class Lcom/google/android/gms/drive/internal/zzab$4;
.super Lcom/google/android/gms/drive/internal/zzab$zzd;


# instance fields
.field final synthetic zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzalp:Lcom/google/android/gms/drive/internal/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzab;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$4;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzab$4;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/drive/internal/zzab$zzd;-><init>(Lcom/google/android/gms/drive/internal/zzab;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/internal/zzab$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzab$4;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$4;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzab$4;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/zzab;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/zzab$4;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzab$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzab$zzb;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
