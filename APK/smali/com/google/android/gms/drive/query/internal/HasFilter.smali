.class public Lcom/google/android/gms/drive/query/internal/HasFilter;
.super Lcom/google/android/gms/drive/query/internal/AbstractFilter;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzi;


# instance fields
.field final mVersionCode:I

.field final zzanW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final zzanX:Lcom/google/android/gms/drive/metadata/MetadataField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/HasFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzi;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/AbstractFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->zzanW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/zze;->zzb(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->zzanX:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/query/internal/HasFilter;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->zzanW:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->zzanX:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzi;->zza(Lcom/google/android/gms/drive/query/internal/HasFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzf;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->zzanX:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/query/internal/HasFilter;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/drive/query/internal/zzf;->zzd(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
