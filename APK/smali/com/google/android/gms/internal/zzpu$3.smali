.class Lcom/google/android/gms/internal/zzpu$3;
.super Lcom/google/android/gms/internal/zzpu$zzc;


# instance fields
.field final synthetic zzaPO:Ljava/lang/String;

.field final synthetic zzaPR:J

.field final synthetic zzaPT:Lcom/google/android/gms/internal/zzpu;

.field final synthetic zzaPU:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/internal/zzlm;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPT:Lcom/google/android/gms/internal/zzpu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPO:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPR:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPU:Lcom/google/android/gms/internal/zzlm;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpu$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpu$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpu$3;->zza(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpt;)V
    .locals 7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPO:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPR:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpu$3;->zzaPU:Lcom/google/android/gms/internal/zzlm;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;JLcom/google/android/gms/internal/zzlm;)V

    return-void
.end method
