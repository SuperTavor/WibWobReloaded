.class Lcom/google/android/gms/drive/internal/zzy$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzali:Lcom/google/android/gms/drive/DriveFile;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzy$zzc;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/zzy$zzc;->zzali:Lcom/google/android/gms/drive/DriveFile;

    return-void
.end method


# virtual methods
.method public getDriveFile()Lcom/google/android/gms/drive/DriveFile;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzy$zzc;->zzali:Lcom/google/android/gms/drive/DriveFile;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzy$zzc;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
