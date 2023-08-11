.class final Lcom/google/android/gms/internal/zzpt$zza;
.super Lcom/google/android/gms/internal/zzpt$zzb;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpt$zzb;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlb$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zziv(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
