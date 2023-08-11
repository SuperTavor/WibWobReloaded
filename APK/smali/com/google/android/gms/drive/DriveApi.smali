.class public interface abstract Lcom/google/android/gms/drive/DriveApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelPendingActions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
.end method

.method public abstract getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
.end method

.method public abstract isAutobackupEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract newCreateFileActivityBuilder()Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.end method

.method public abstract newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;
.end method

.method public abstract query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method
