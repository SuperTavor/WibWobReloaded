.class final Lcom/google/android/gms/common/internal/zze$3;
.super Lcom/google/android/gms/common/internal/zze;


# instance fields
.field final synthetic zzafc:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$3;->zzafc:[C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$3;->zzafc:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
