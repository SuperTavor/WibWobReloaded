.class public Lcom/google/android/gms/drive/query/SortOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzanS:Ljava/util/List;

.field final zzanT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/SortOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/SortOrder;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/SortOrder;->zzanS:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/query/SortOrder;->zzanT:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(ILjava/util/List;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZLcom/google/android/gms/drive/query/SortOrder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SortOrder[%s, %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    iget-object v5, p0, Lcom/google/android/gms/drive/query/SortOrder;->zzanS:Ljava/util/List;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/drive/query/SortOrder;->zzanT:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/zzb;->zza(Lcom/google/android/gms/drive/query/SortOrder;Landroid/os/Parcel;I)V

    return-void
.end method
