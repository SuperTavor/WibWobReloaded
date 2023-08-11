.class public interface abstract Lcom/google/android/gms/drive/DriveContents;
.super Ljava/lang/Object;


# virtual methods
.method public abstract commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract commit(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract discard(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

.method public abstract getDriveId()Lcom/google/android/gms/drive/DriveId;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getMode()I
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract zzqO()Lcom/google/android/gms/drive/Contents;
.end method

.method public abstract zzqP()V
.end method

.method public abstract zzqQ()Z
.end method
