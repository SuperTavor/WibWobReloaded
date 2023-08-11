.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;
.super Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;


# instance fields
.field private final mVersionCode:I

.field private final zzaBI:Ljava/lang/Long;

.field private final zzaBK:Landroid/net/Uri;

.field private final zzaBL:Ljava/lang/Long;

.field private zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private final zzaqZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaqZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBL:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBK:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBI:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBK:Landroid/net/Uri;

    if-nez v2, :cond_1

    :goto_0
    const-string v1, "Cannot set both a URI and an image"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBK:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Cannot set both a URI and an image"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 7

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(ILjava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzos()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBK:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaqZ:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBL:Ljava/lang/Long;

    return-object v0
.end method

.method public getProgressValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBI:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->zza(Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvS()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->zzaBM:Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object v0
.end method
