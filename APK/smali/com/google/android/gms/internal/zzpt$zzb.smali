.class Lcom/google/android/gms/internal/zzpt$zzb;
.super Lcom/google/android/gms/internal/zzps;


# instance fields
.field private final zzaPA:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzps;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzb;->zzaPA:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb;->zzaPA:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zzb$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzpt$zzb$2;-><init>(Lcom/google/android/gms/internal/zzpt$zzb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;[BZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb;->zzaPA:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/internal/zzpt$zzb$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzpt$zzb$1;-><init>(Lcom/google/android/gms/internal/zzpt$zzb;Ljava/lang/String;[BZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method
