.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mIndex:I

.field final mVersionCode:I

.field final zzaoB:Ljava/lang/String;

.field final zzaoC:Z

.field final zzaoD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->zzaoB:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->mIndex:I

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->zzaoC:Z

    iput p5, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->zzaoD:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/zzr;->zza(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Landroid/os/Parcel;I)V

    return-void
.end method
