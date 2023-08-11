.class Lcom/google/android/gms/drive/internal/zzaa$zza;
.super Lcom/google/android/gms/drive/internal/zzd;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

.field final synthetic zzall:Lcom/google/android/gms/drive/internal/zzaa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/drive/internal/zzaa$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaa$zza;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/internal/zzlb$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/internal/OnDeviceUsagePreferenceResponse;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzaa$zzb;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDeviceUsagePreferenceResponse;->zzrx()Lcom/google/android/gms/drive/internal/FileUploadPreferencesImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/drive/internal/zzaa$zzb;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/drive/internal/zzaa$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzaa$zzb;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzaa$zza;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/google/android/gms/drive/internal/zzaa$zzb;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/drive/internal/zzaa$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
