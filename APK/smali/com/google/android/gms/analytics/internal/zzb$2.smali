.class Lcom/google/android/gms/analytics/internal/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzMy:Lcom/google/android/gms/analytics/internal/zzb;

.field final synthetic zzMz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzb;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzMy:Lcom/google/android/gms/analytics/internal/zzb;

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzMz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzMy:Lcom/google/android/gms/analytics/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzb$2;->zzMz:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zzI(Z)V

    return-void
.end method
