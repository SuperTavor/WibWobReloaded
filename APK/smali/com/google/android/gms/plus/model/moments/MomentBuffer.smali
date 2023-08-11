.class public final Lcom/google/android/gms/plus/model/moments/MomentBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/moments/Moment;
    .locals 2

    new-instance v0, Lcom/google/android/gms/plus/internal/model/moments/zzc;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/moments/MomentBuffer;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/plus/internal/model/moments/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;->get(I)Lcom/google/android/gms/plus/model/moments/Moment;

    move-result-object v0

    return-object v0
.end method
