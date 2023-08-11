.class Lcom/google/android/gms/drive/internal/zzy$1;
.super Lcom/google/android/gms/drive/internal/zzy$zzd;


# instance fields
.field final synthetic zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzale:I

.field final synthetic zzalf:I

.field final synthetic zzalg:Lcom/google/android/gms/drive/ExecutionOptions;

.field final synthetic zzalh:Lcom/google/android/gms/drive/internal/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalh:Lcom/google/android/gms/drive/internal/zzy;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzale:I

    iput p5, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalf:I

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalg:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzy$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzy$1;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalh:Lcom/google/android/gms/drive/internal/zzy;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/internal/zzy;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzald:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzqW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzale:I

    iget v4, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalf:I

    iget-object v5, p0, Lcom/google/android/gms/drive/internal/zzy$1;->zzalg:Lcom/google/android/gms/drive/ExecutionOptions;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/ExecutionOptions;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/drive/internal/zzy$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzy$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
