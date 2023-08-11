.class public Lcom/google/android/gms/drive/internal/AddEventListenerRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaho:I

.field final zzaiA:Lcom/google/android/gms/drive/DriveId;

.field final zzajx:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->zzaho:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->zzajx:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(ILcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zza;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Landroid/os/Parcel;I)V

    return-void
.end method
