.class public Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mIndex:I

.field final mVersionCode:I

.field final zzapd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;->zzapd:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zzf;->zza(Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
