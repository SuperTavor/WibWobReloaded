.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private final zzaiC:Lcom/google/android/gms/drive/internal/zzl;

.field private zzaiD:Lcom/google/android/gms/drive/DriveContents;

.field private zzaiE:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/drive/internal/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/zzl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Must call setInitialDriveContents to CreateFileActivityBuilder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiD:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiD:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzqP()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/zzl;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/zzl;->zza(Lcom/google/android/gms/drive/DriveId;)V

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/zzl;->zzcE(Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitialDriveContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/google/android/gms/drive/internal/zzv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzqQ()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DriveContents are already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzqO()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/internal/zzl;->zzcI(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiD:Lcom/google/android/gms/drive/DriveContents;

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiE:Z

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/drive/internal/zzl;->zzcI(I)V

    goto :goto_0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaiC:Lcom/google/android/gms/drive/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/internal/zzl;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    return-object p0
.end method
