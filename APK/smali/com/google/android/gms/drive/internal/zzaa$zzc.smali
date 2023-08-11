.class abstract Lcom/google/android/gms/drive/internal/zzaa$zzc;
.super Lcom/google/android/gms/drive/internal/zzt;


# instance fields
.field final synthetic zzall:Lcom/google/android/gms/drive/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzaa$zzc;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaa$zzb;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/zzaa$zzc;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/drive/internal/zzaa$zzb;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/drive/internal/zzaa$1;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$zzc;->zzF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;

    move-result-object v0

    return-object v0
.end method
