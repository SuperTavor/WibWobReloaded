.class Lcom/google/android/gms/drive/internal/zzab$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzalr:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$zzc;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/zzab$zzc;->zzalr:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/google/android/gms/drive/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzc;->zzalr:Lcom/google/android/gms/drive/Metadata;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzc;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
