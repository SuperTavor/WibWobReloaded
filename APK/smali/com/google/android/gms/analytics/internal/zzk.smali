.class public Lcom/google/android/gms/analytics/internal/zzk;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final zzNs:Lcom/google/android/gms/internal/zzpb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/internal/zzpb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzNs:Lcom/google/android/gms/internal/zzpb;

    return-void
.end method


# virtual methods
.method public zzhM()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzhQ()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzkp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzNs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzpb;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzkr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzNs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzpb;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected zzhR()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zziw()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->zzyr()Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzNs:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpb;->zza(Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzhM()V

    return-void
.end method

.method public zzjb()Lcom/google/android/gms/internal/zzpb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zziE()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzNs:Lcom/google/android/gms/internal/zzpb;

    return-object v0
.end method
