.class public final Lcom/google/android/gms/nearby/connection/AppMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mVersionCode:I

.field private final zzaPy:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/AppMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/AppMetadata;->mVersionCode:I

    const-string v0, "Must specify application identifiers"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/AppMetadata;->zzaPy:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Application identifiers cannot be empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ILjava/lang/Object;)I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/nearby/connection/AppMetadata;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppIdentifiers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AppMetadata;->zzaPy:Ljava/util/List;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/AppMetadata;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/zzb;->zza(Lcom/google/android/gms/nearby/connection/AppMetadata;Landroid/os/Parcel;I)V

    return-void
.end method
