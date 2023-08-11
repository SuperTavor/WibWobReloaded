.class Lcom/google/android/gms/internal/zzlz$zza;
.super Lcom/google/android/gms/internal/zzlw;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlz$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zzbN(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlz$zza;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
