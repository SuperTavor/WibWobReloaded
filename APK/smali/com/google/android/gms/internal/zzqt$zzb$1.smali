.class Lcom/google/android/gms/internal/zzqt$zzb$1;
.super Lcom/google/android/gms/internal/zzqt$zza;


# instance fields
.field final synthetic zzaUR:Lcom/google/android/gms/internal/zzqt$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqt$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzb$1;->zzaUR:Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbb(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb$1;->zzaUR:Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$zzb;->zza(Lcom/google/android/gms/internal/zzqt$zzb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb$1;->zzaUR:Lcom/google/android/gms/internal/zzqt$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqt$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
