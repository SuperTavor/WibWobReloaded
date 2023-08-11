.class Lcom/google/android/gms/internal/zzpt$zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic zzZe:I

.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPG:Lcom/google/android/gms/internal/zzpt$zzd;

.field final synthetic zzayn:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt$zzd;Ljava/lang/String;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzaPG:Lcom/google/android/gms/internal/zzpt$zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzaPB:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzZe:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzayn:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzaPB:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzZe:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt$zzd$1;->zzayn:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzd$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;)V

    return-void
.end method
