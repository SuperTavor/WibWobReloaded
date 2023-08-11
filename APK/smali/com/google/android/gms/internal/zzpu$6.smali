.class Lcom/google/android/gms/internal/zzpu$6;
.super Lcom/google/android/gms/internal/zzpu$zzc;


# instance fields
.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPT:Lcom/google/android/gms/internal/zzpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu$6;->zzaPT:Lcom/google/android/gms/internal/zzpu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpu$6;->zzaPB:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpu$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpu$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpu$6;->zza(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpu$6;->zzaPB:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzp(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V

    return-void
.end method
