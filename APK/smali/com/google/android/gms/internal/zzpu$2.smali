.class Lcom/google/android/gms/internal/zzpu$2;
.super Lcom/google/android/gms/internal/zzpu$zzb;


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaPQ:Lcom/google/android/gms/nearby/connection/AppMetadata;

.field final synthetic zzaPR:J

.field final synthetic zzaPS:Lcom/google/android/gms/internal/zzlm;

.field final synthetic zzaPT:Lcom/google/android/gms/internal/zzpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzlm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPT:Lcom/google/android/gms/internal/zzpu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpu$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPQ:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPR:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPS:Lcom/google/android/gms/internal/zzlm;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpu$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpu$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpu$2;->zza(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpt;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpu$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPQ:Lcom/google/android/gms/nearby/connection/AppMetadata;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPR:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpu$2;->zzaPS:Lcom/google/android/gms/internal/zzlm;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzlm;)V

    return-void
.end method
