.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$zza;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# instance fields
.field private zzSI:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$zza;->zzSI:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public zzg(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$zza;->zzSI:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
