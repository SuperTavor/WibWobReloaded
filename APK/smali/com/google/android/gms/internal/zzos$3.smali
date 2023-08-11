.class Lcom/google/android/gms/internal/zzos$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzos$zza;


# instance fields
.field final synthetic zzarG:Lcom/google/android/gms/internal/zzos;

.field final synthetic zzarK:Lcom/google/android/gms/fitness/request/OnDataPointListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzos;Lcom/google/android/gms/fitness/request/OnDataPointListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzos$3;->zzarG:Lcom/google/android/gms/internal/zzos;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzos$3;->zzarK:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzsL()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/fitness/data/zzk$zza;->zzsx()Lcom/google/android/gms/fitness/data/zzk$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzos$3;->zzarK:Lcom/google/android/gms/fitness/request/OnDataPointListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/zzk$zza;->zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/data/zzk;

    return-void
.end method
