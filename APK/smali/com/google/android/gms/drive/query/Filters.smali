.class public Lcom/google/android/gms/drive/query/Filters;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaor:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaor:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static contains(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/String;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaou:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static eq(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/query/Filter;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Custom property value may not be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/drive/query/internal/HasFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->zzanR:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    new-instance v2, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-direct {v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zza(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->zzrI()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/query/internal/HasFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaom:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaop:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greaterThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaoq:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static in(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/query/internal/InFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaon:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lessThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaoo:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static not(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static openedByMe()Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V

    return-object v0
.end method

.method public static varargs or(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaos:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->zzaos:Lcom/google/android/gms/drive/query/internal/Operator;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static ownedByMe()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;-><init>()V

    return-object v0
.end method

.method public static sharedWithMe()Lcom/google/android/gms/drive/query/Filter;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->zzanQ:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V

    return-object v0
.end method
