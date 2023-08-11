.class Lcom/google/android/gms/internal/zzkw$1;
.super Lcom/google/android/gms/internal/zzla$zza;


# instance fields
.field final synthetic zzZP:Lcom/google/android/gms/internal/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw$1;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzla$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbg(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzkw;->zznm()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw$1;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkw;->zza(Lcom/google/android/gms/internal/zzkw;)V

    return-void
.end method
