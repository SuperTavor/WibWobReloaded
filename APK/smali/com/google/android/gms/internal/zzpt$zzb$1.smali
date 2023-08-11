.class Lcom/google/android/gms/internal/zzpt$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPC:Z

.field final synthetic zzaPD:Lcom/google/android/gms/internal/zzpt$zzb;

.field final synthetic zzayn:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt$zzb;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzaPD:Lcom/google/android/gms/internal/zzpt$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzaPB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzayn:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzaPC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzaPB:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzayn:[B

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt$zzb$1;->zzaPC:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzb$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method
