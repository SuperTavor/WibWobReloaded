.class public abstract Lcom/google/android/gms/internal/zznl;
.super Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected zzb(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/zza;->zze(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zzlN()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zznk;->zzau(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
