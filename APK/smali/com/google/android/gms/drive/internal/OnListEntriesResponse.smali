.class public Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
.super Lcom/google/android/gms/drive/WriteAwareParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzakB:Z

.field final zzamk:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/WriteAwareParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->zzamk:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->zzakB:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected zzJ(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbd;->zza(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrB()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->zzamk:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzrC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->zzakB:Z

    return v0
.end method
