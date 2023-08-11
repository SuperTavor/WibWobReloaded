.class Lcom/google/android/gms/analytics/internal/zzt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzOa:Lcom/google/android/gms/analytics/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zza(Lcom/google/android/gms/analytics/internal/zzt;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziw()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/zzg;->zzg(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzbp()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzt;->zza(Lcom/google/android/gms/analytics/internal/zzt;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzt;->zzb(Lcom/google/android/gms/analytics/internal/zzt;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzt$1;->zzOa:Lcom/google/android/gms/analytics/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzt;->run()V

    goto :goto_0
.end method
