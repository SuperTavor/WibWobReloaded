.class Lcom/google/android/gms/analytics/internal/zzb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzMA:Ljava/lang/String;

.field final synthetic zzMB:Ljava/lang/Runnable;

.field final synthetic zzMy:Lcom/google/android/gms/analytics/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMy:Lcom/google/android/gms/analytics/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMB:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMy:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzbi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMB:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$3;->zzMB:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
