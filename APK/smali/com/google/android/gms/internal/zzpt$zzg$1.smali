.class Lcom/google/android/gms/internal/zzpt$zzg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaPM:Ljava/lang/String;

.field final synthetic zzaPN:Ljava/lang/String;

.field final synthetic zzaPO:Ljava/lang/String;

.field final synthetic zzaPP:Lcom/google/android/gms/internal/zzpt$zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpt$zzg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPP:Lcom/google/android/gms/internal/zzpt$zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPO:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPN:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->zzaPO:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt$zzg$1;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzg$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)V

    return-void
.end method
