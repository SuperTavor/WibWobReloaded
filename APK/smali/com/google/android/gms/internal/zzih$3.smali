.class Lcom/google/android/gms/internal/zzih$3;
.super Lcom/google/android/gms/internal/zzab;


# instance fields
.field final synthetic zzJc:Lcom/google/android/gms/internal/zzih;

.field final synthetic zzJd:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzih;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih$3;->zzJc:Lcom/google/android/gms/internal/zzih;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzab;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzab;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    goto :goto_0
.end method
