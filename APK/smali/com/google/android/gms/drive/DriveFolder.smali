.class public interface abstract Lcom/google/android/gms/drive/DriveFolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "application/vnd.google-apps.folder"


# virtual methods
.method public abstract createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
.end method
