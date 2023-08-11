.class Lcom/google/android/gms/internal/zzqt$zzb;
.super Lcom/google/android/gms/internal/zzlb$zza;


# instance fields
.field private final zzVs:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzaUN:Ljava/lang/String;

.field private final zzaUQ:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/search/SearchAuth;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const-string v0, "SearchAuth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUQ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzVs:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUN:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqt$zzb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUQ:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqt$zzb;->zza(Lcom/google/android/gms/internal/zzqs;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzqs;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUQ:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzVs:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqt$zzb$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqt$zzb$1;-><init>(Lcom/google/android/gms/internal/zzqt$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqs;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqr;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUN:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzqr;->zzb(Lcom/google/android/gms/internal/zzqq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqt$zzb;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zzaUQ:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearTokenImpl received failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method
