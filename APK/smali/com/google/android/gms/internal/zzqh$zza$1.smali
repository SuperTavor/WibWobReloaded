.class Lcom/google/android/gms/internal/zzqh$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Moments$LoadMomentsResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaSM:Lcom/google/android/gms/internal/zzqh$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqh$zza;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$zza$1;->zzaSM:Lcom/google/android/gms/internal/zzqh$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqh$zza$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqh$zza$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
