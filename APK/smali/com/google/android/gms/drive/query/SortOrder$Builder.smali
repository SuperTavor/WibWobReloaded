.class public Lcom/google/android/gms/drive/query/SortOrder$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final zzanS:Ljava/util/List;

.field private zzanT:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanS:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanT:Z

    return-void
.end method


# virtual methods
.method public addSortAscending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanS:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSortDescending(Lcom/google/android/gms/drive/metadata/SortableMetadataField;)Lcom/google/android/gms/drive/query/SortOrder$Builder;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanS:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;

    invoke-interface {p1}, Lcom/google/android/gms/drive/metadata/SortableMetadataField;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/drive/query/SortOrder;
    .locals 4

    new-instance v0, Lcom/google/android/gms/drive/query/SortOrder;

    iget-object v1, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanS:Ljava/util/List;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/query/SortOrder$Builder;->zzanT:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/query/SortOrder;-><init>(Ljava/util/List;ZLcom/google/android/gms/drive/query/SortOrder$1;)V

    return-object v0
.end method
