.class Lcom/google/android/gms/internal/zzez$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzzR:Lcom/google/android/gms/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzez;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez$6;->zzzR:Lcom/google/android/gms/internal/zzez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzez$6;->zzzR:Lcom/google/android/gms/internal/zzez;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzez;->zza(Lcom/google/android/gms/internal/zzez;)Lcom/google/android/gms/internal/zzeo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeo;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
