.class public Lcom/google/android/gms/internal/zzrb$zza;
.super Ljava/lang/Object;


# instance fields
.field private final zzaYM:Lcom/google/android/gms/internal/zzag$zza;

.field private final zzban:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzag$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzban:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzaYM:Lcom/google/android/gms/internal/zzag$zza;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzag$zza;Lcom/google/android/gms/internal/zzrb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzrb$zza;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzag$zza;)V

    return-void
.end method

.method public static zzDZ()Lcom/google/android/gms/internal/zzrb$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzrb$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrb$zzb;-><init>(Lcom/google/android/gms/internal/zzrb$1;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrb$zza;->zzEa()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushAfterEvaluate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzaYM:Lcom/google/android/gms/internal/zzag$zza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzDz()Lcom/google/android/gms/internal/zzag$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzaYM:Lcom/google/android/gms/internal/zzag$zza;

    return-object v0
.end method

.method public zzEa()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzban:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->zzban:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
