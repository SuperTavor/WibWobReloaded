.class public Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
.super Ljava/lang/Object;


# instance fields
.field private final zzamC:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzamC:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzamC:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/drive/metadata/internal/CustomProperty;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzamC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;->zzrJ()Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zzrI()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzamC:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;-><init>(Ljava/util/Collection;Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$1;)V

    return-object v0
.end method
