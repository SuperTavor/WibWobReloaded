.class public Lcom/google/android/gms/internal/zzrb$zzd;
.super Ljava/lang/Object;


# instance fields
.field private zzYk:Ljava/lang/String;

.field private final zzbao:Ljava/util/List;

.field private final zzbap:Ljava/util/Map;

.field private zzbaq:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbao:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbap:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzYk:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbaq:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzrb$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrb$zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public zzEf()Lcom/google/android/gms/internal/zzrb$zzc;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzrb$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbao:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzYk:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbaq:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzrb$zzc;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/internal/zzrb$1;)V

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzrb$zze;)Lcom/google/android/gms/internal/zzrb$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbao:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzrb$zza;)Lcom/google/android/gms/internal/zzrb$zzd;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zza;->zzEa()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzae;->zzfu:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzfo(Ljava/lang/String;)Lcom/google/android/gms/internal/zzrb$zzd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzYk:Ljava/lang/String;

    return-object p0
.end method

.method public zzjC(I)Lcom/google/android/gms/internal/zzrb$zzd;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrb$zzd;->zzbaq:I

    return-object p0
.end method
