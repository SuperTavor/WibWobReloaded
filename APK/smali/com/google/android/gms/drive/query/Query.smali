.class public Lcom/google/android/gms/drive/query/Query;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzajA:Ljava/util/List;

.field private final zzajB:Ljava/util/Set;

.field final zzalC:Z

.field final zzanK:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final zzanL:Ljava/lang/String;

.field final zzanM:Lcom/google/android/gms/drive/query/SortOrder;

.field final zzanN:Ljava/util/List;

.field final zzanO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/zza;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/List;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/Query;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/Query;->zzanK:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/Query;->zzanL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/Query;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/Query;->zzanN:Ljava/util/List;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/query/Query;->zzanO:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/query/Query;->zzajA:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/drive/query/Query;->zzajB:Ljava/util/Set;

    iput-boolean p9, p0, Lcom/google/android/gms/drive/query/Query;->zzalC:Z

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/List;Z)V
    .locals 11

    if-nez p7, :cond_0

    const/4 v9, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/drive/query/Query;-><init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/List;Ljava/util/Set;Z)V

    return-void

    :cond_0
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/Set;Z)V
    .locals 11

    const/4 v2, 0x1

    if-nez p6, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/drive/query/Query;-><init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/List;Ljava/util/Set;Z)V

    return-void

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/Set;ZLcom/google/android/gms/drive/query/Query$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/drive/query/Query;-><init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->zzanK:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->zzanL:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Lcom/google/android/gms/drive/query/SortOrder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Query[%s,%s,PageToken=%s,Spaces=%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/drive/query/Query;->zzanK:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/drive/query/Query;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/drive/query/Query;->zzanL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/drive/query/Query;->zzajA:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/zza;->zza(Lcom/google/android/gms/drive/query/Query;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrO()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->zzanN:Ljava/util/List;

    return-object v0
.end method

.method public zzrP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/query/Query;->zzanO:Z

    return v0
.end method

.method public zzrQ()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->zzajB:Ljava/util/Set;

    return-object v0
.end method

.method public zzrR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/query/Query;->zzalC:Z

    return v0
.end method
