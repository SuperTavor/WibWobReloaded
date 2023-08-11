.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaoV:Lcom/google/android/gms/common/data/DataHolder;

.field final zzaoW:Z

.field final zzaoX:Ljava/util/List;

.field final zzaoY:Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;

.field final zzoQ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/data/DataHolder;ZLjava/util/List;Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzoQ:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzaoV:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzaoW:Z

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzaoX:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzaoY:Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zzd;->zza(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;Landroid/os/Parcel;I)V

    return-void
.end method
