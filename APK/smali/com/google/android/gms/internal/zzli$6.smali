.class Lcom/google/android/gms/internal/zzli$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;

.field final synthetic zzacv:Lcom/google/android/gms/internal/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzlo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$6;->zzacr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$6;->zzacv:Lcom/google/android/gms/internal/zzlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$6;->zzacv:Lcom/google/android/gms/internal/zzlo;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlo;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
