.class Lcom/google/android/gms/drive/MetadataBuffer$zza;
.super Lcom/google/android/gms/drive/Metadata;


# instance fields
.field private final zzabq:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzadm:I

.field private final zzajb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzajb:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzbt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzadm:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/drive/MetadataBuffer$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzajb:I

    return v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzqV()Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public isDataValid()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzajb:I

    iget v2, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzadm:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzqV()Lcom/google/android/gms/drive/Metadata;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzrM()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/zze;->zzrK()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;

    sget-object v3, Lcom/google/android/gms/internal/zznd;->zzano:Lcom/google/android/gms/drive/metadata/MetadataField;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzajb:I

    iget v5, p0, Lcom/google/android/gms/drive/MetadataBuffer$zza;->zzadm:I

    invoke-interface {v0, v3, v1, v4, v5}, Lcom/google/android/gms/drive/metadata/MetadataField;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/internal/zzp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/zzp;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-object v0
.end method
