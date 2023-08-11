.class public interface abstract Lcom/google/android/gms/drive/DriveFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# static fields
.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_WRITE_ONLY:I = 0x20000000


# virtual methods
.method public abstract open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end method
