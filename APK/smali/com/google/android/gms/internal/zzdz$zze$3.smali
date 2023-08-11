.class Lcom/google/android/gms/internal/zzdz$zze$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zzc;


# instance fields
.field final synthetic zzyK:Lcom/google/android/gms/internal/zzdz$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$zze$3;->zzyK:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbb;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zze$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdz$zze$3$1;-><init>(Lcom/google/android/gms/internal/zzdz$zze$3;Lcom/google/android/gms/internal/zzbb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdz$zze$3;->zza(Lcom/google/android/gms/internal/zzbb;)V

    return-void
.end method
