.class Lcom/google/android/gms/internal/zzos$zzc;
.super Lcom/google/android/gms/internal/zzoj$zza;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

.field private final zzarO:Lcom/google/android/gms/internal/zzos$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzos$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoj$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzos$zzc;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzos$zzc;->zzarO:Lcom/google/android/gms/internal/zzos$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzos$zza;Lcom/google/android/gms/internal/zzos$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzos$zzc;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzos$zza;)V

    return-void
.end method


# virtual methods
.method public zzo(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzos$zzc;->zzarO:Lcom/google/android/gms/internal/zzos$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzos$zzc;->zzarO:Lcom/google/android/gms/internal/zzos$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos$zza;->zzsL()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzos$zzc;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
