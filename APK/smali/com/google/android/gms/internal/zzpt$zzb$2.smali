.class Lcom/google/android/gms/internal/zzpt$zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPD:Lcom/google/android/gms/internal/zzpt$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt$zzb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzb$2;->zzaPD:Lcom/google/android/gms/internal/zzpt$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpt$zzb$2;->zzaPB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb$2;->zzaPB:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzb$2;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method
