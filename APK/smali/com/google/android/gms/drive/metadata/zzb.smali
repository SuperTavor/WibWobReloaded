.class public abstract Lcom/google/android/gms/drive/metadata/zzb;
.super Lcom/google/android/gms/drive/metadata/zza;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot read collections from a dataHolder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
