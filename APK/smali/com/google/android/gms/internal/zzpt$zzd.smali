.class final Lcom/google/android/gms/internal/zzpt$zzd;
.super Lcom/google/android/gms/internal/zzpt$zzb;


# instance fields
.field private final zzaPF:Lcom/google/android/gms/internal/zzlm;

.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzpt$zzb;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlb$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzd;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzd;->zzaPF:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;I[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzd;->zzaPF:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zzd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzpt$zzd$1;-><init>(Lcom/google/android/gms/internal/zzpt$zzd;Ljava/lang/String;I[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public zziu(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzd;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
