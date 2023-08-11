.class final Lcom/google/android/gms/internal/zzpt$zze;
.super Lcom/google/android/gms/internal/zzps;


# instance fields
.field private final zzaPH:Lcom/google/android/gms/internal/zzlm;

.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzlm;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzps;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlb$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt$zze;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt$zze;->zzaPH:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpt$zze;->zzaPH:Lcom/google/android/gms/internal/zzlm;

    new-instance v0, Lcom/google/android/gms/internal/zzpt$zze$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpt$zze$1;-><init>(Lcom/google/android/gms/internal/zzpt$zze;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public zzm(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zze;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zzf;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzpt$zzf;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
