.class public Lcom/google/android/gms/drive/query/Query$Builder;
.super Ljava/lang/Object;


# instance fields
.field private zzajB:Ljava/util/Set;

.field private zzalC:Z

.field private zzanL:Ljava/lang/String;

.field private zzanM:Lcom/google/android/gms/drive/query/SortOrder;

.field private zzanN:Ljava/util/List;

.field private zzanO:Z

.field private final zzanP:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanP:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Query;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanP:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanP:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->getSortOrder()Lcom/google/android/gms/drive/query/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->zzrO()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanN:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->zzrP()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanO:Z

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->zzrQ()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzajB:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/query/Query;->zzrR()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzalC:Z

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/gms/drive/query/Query;
    .locals 9

    new-instance v0, Lcom/google/android/gms/drive/query/Query;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v2, Lcom/google/android/gms/drive/query/internal/Operator;->zzaor:Lcom/google/android/gms/drive/query/internal/Operator;

    iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanP:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    iget-object v2, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    iget-object v4, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanN:Ljava/util/List;

    iget-boolean v5, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanO:Z

    iget-object v6, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzajB:Ljava/util/Set;

    iget-boolean v7, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzalC:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/drive/query/Query;-><init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;Ljava/util/List;ZLjava/util/Set;ZLcom/google/android/gms/drive/query/Query$1;)V

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanL:Ljava/lang/String;

    return-object p0
.end method

.method public setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->zzanM:Lcom/google/android/gms/drive/query/SortOrder;

    return-object p0
.end method
