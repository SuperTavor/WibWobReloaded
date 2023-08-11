.class Lcom/google/android/gms/internal/zzpu$4;
.super Lcom/google/android/gms/internal/zzpu$zzc;


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaPB:Ljava/lang/String;

.field final synthetic zzaPT:Lcom/google/android/gms/internal/zzpu;

.field final synthetic zzaPV:Lcom/google/android/gms/internal/zzlm;

.field final synthetic zzaPW:Lcom/google/android/gms/internal/zzlm;

.field final synthetic zzayn:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPT:Lcom/google/android/gms/internal/zzpu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpu$4;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPB:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpu$4;->zzayn:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPV:Lcom/google/android/gms/internal/zzlm;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPW:Lcom/google/android/gms/internal/zzlm;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzpu$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzpu$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpu$4;->zza(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpt;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpu$4;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPB:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpu$4;->zzayn:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPV:Lcom/google/android/gms/internal/zzlm;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpu$4;->zzaPW:Lcom/google/android/gms/internal/zzlm;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V

    return-void
.end method
