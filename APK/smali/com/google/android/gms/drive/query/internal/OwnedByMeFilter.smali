.class public Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;
.super Lcom/google/android/gms/drive/query/internal/AbstractFilter;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzo;


# instance fields
.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/AbstractFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;->mVersionCode:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzo;->zza(Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzf;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/drive/query/internal/zzf;->zzrU()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
