.class public Lcom/google/android/gms/internal/zzjw;
.super Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field private final zzRq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0x4d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzf;->zzoN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzRq:Ljava/lang/String;

    return-void
.end method

.method private zzlz()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authPackage"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjw;->zzRq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjw;->zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzjy;->zza(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjy;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzjy$zza;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzjy;->zzb(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appinvite.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appinvite.internal.IAppInviteService"

    return-object v0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjw;->zzlz()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
