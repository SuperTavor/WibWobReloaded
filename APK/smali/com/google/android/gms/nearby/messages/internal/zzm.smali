.class final Lcom/google/android/gms/nearby/messages/internal/zzm;
.super Lcom/google/android/gms/nearby/messages/internal/zzc$zza;


# instance fields
.field private final zzaQX:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzc$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzaQX:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method

.method static zzi(Lcom/google/android/gms/internal/zzlb$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    return-object v0
.end method


# virtual methods
.method public zzaT(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzaQX:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
