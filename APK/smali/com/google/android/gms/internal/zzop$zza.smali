.class Lcom/google/android/gms/internal/zzop$zza;
.super Lcom/google/android/gms/internal/zznu$zza;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

.field private zzarA:I

.field private zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznu$zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarA:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzop$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzop$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Fitness"

    const-string v1, "Received batch result"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarA:I

    iget v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarA:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zztn()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$zza;->zzarB:Lcom/google/android/gms/fitness/result/DataReadResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzb(Lcom/google/android/gms/fitness/result/DataReadResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
