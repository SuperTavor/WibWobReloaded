.class public Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;
.super Lcom/google/android/gms/drive/query/internal/AbstractFilter;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzh;


# instance fields
.field final mValue:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzh;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/AbstractFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;->mValue:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzh;->zza(Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;->mValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/query/internal/zzf;->zzcL(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
