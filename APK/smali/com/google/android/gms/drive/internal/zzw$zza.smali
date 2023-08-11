.class Lcom/google/android/gms/drive/internal/zzw$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;


# instance fields
.field private final zzakZ:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzw$zza;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/drive/internal/zzw$zza;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    new-instance v0, Lcom/google/android/gms/drive/internal/zzw$zza$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/internal/zzw$zza$1;-><init>(Lcom/google/android/gms/drive/internal/zzw$zza;JJ)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method
