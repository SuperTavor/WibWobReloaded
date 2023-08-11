.class public Lcom/google/android/gms/internal/zzpz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzpx;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0, p3, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v0, Lcom/google/android/gms/internal/zzpz$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/zzpz$3;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzpx;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v0, p3, p4, v1}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/internal/zzpx;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/zzpz;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/zzpz;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    throw v0
.end method

.method static synthetic zzb(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzpz;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzpx;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzpz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzpx;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpz$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzpz$1;-><init>(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpz$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzpz$2;-><init>(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method
