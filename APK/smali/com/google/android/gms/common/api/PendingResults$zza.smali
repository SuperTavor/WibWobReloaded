.class final Lcom/google/android/gms/common/api/PendingResults$zza;
.super Lcom/google/android/gms/internal/zzlc;


# instance fields
.field private final zzaaW:Lcom/google/android/gms/common/api/Result;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlc;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzaaW:Lcom/google/android/gms/common/api/Result;

    return-void
.end method


# virtual methods
.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzaaW:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Creating failed results is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/PendingResults$zza;->zzaaW:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method
