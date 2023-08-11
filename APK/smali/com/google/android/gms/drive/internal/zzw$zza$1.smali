.class Lcom/google/android/gms/drive/internal/zzw$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zzb;


# instance fields
.field final synthetic zzala:J

.field final synthetic zzalb:J

.field final synthetic zzalc:Lcom/google/android/gms/drive/internal/zzw$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzw$zza;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zzalc:Lcom/google/android/gms/drive/internal/zzw$zza;

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zzala:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zzalb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zzala:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zzalb:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    return-void
.end method

.method public zznN()V
    .locals 0

    return-void
.end method

.method public synthetic zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzw$zza$1;->zza(Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    return-void
.end method
