.class final Lcom/google/android/gms/internal/zzgt$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzFE:Lcom/google/android/gms/internal/zzgv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$3;->zzFE:Lcom/google/android/gms/internal/zzgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$3;->zzFE:Lcom/google/android/gms/internal/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgv;->zzfT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$3;->zzFE:Lcom/google/android/gms/internal/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgv;->zzfR()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$3;->zzFE:Lcom/google/android/gms/internal/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgv;->zzfR()Lcom/google/android/gms/internal/zzdz$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zzd;->release()V

    :cond_0
    return-void
.end method
