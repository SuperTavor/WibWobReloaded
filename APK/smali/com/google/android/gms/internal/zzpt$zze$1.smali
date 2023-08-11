.class Lcom/google/android/gms/internal/zzpt$zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPI:Ljava/lang/String;

.field final synthetic zzaPJ:Ljava/lang/String;

.field final synthetic zzaPK:Lcom/google/android/gms/internal/zzpt$zze;

.field final synthetic zzayn:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt$zze;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPK:Lcom/google/android/gms/internal/zzpt$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPI:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPJ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzayn:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPB:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPI:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzaPJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt$zze$1;->zzayn:[B

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$zze$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V

    return-void
.end method
