.class public Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
.super Ljava/lang/Object;


# instance fields
.field private mName:Ljava/lang/String;

.field private zzF:Ljava/lang/String;

.field private zzGq:Ljava/lang/String;

.field private zzaEl:D

.field private zzaEm:D

.field private final zzaST:Ljava/util/Set;

.field private zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaSV:Ljava/util/List;

.field private zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaSX:Ljava/lang/String;

.field private zzaSY:Ljava/lang/String;

.field private zzaSZ:Ljava/lang/String;

.field private zzaTA:Ljava/util/List;

.field private zzaTB:Ljava/lang/String;

.field private zzaTC:Ljava/lang/String;

.field private zzaTD:Ljava/lang/String;

.field private zzaTE:Ljava/lang/String;

.field private zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTG:Ljava/lang/String;

.field private zzaTH:Ljava/lang/String;

.field private zzaTI:Ljava/lang/String;

.field private zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTK:Ljava/lang/String;

.field private zzaTL:Ljava/lang/String;

.field private zzaTM:Ljava/lang/String;

.field private zzaTN:Ljava/lang/String;

.field private zzaTa:Ljava/util/List;

.field private zzaTb:I

.field private zzaTc:Ljava/util/List;

.field private zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTe:Ljava/util/List;

.field private zzaTf:Ljava/lang/String;

.field private zzaTg:Ljava/lang/String;

.field private zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTi:Ljava/lang/String;

.field private zzaTj:Ljava/lang/String;

.field private zzaTk:Ljava/util/List;

.field private zzaTl:Ljava/lang/String;

.field private zzaTm:Ljava/lang/String;

.field private zzaTn:Ljava/lang/String;

.field private zzaTo:Ljava/lang/String;

.field private zzaTp:Ljava/lang/String;

.field private zzaTq:Ljava/lang/String;

.field private zzaTr:Ljava/lang/String;

.field private zzaTs:Ljava/lang/String;

.field private zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTu:Ljava/lang/String;

.field private zzaTv:Ljava/lang/String;

.field private zzaTw:Ljava/lang/String;

.field private zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaqZ:Ljava/lang/String;

.field private zzsX:Ljava/lang/String;

.field private zzwN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 60

    new-instance v2, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSV:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSY:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSZ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTa:Ljava/util/List;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTb:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTc:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTe:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTf:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTi:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTj:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzsX:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTk:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTl:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTm:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTn:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaqZ:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTo:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTp:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTq:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTr:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTs:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTu:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTv:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzwN:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTw:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaEl:D

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaEm:D

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTA:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTB:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTC:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTD:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTE:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTG:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTH:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTI:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTK:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTL:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzGq:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzF:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTM:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTN:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-direct/range {v2 .. v59}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;-><init>(Ljava/util/Set;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLjava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setAbout(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdditionalName(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSV:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddress(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSX:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSY:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaSZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAssociated_media(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTa:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTb:I

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTc:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAudio(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAuthor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTe:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setByArtist(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentSize(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzsX:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContributor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTk:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateCreated(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateModified(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDatePublished(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaqZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmbedUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTr:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGeo(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTu:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTv:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzwN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInAlbum(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLatitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 3

    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaEl:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLongitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 3

    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaEm:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPartOfTVSeries(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPerformers(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTA:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTC:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTE:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnail(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTK:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTickerSymbol(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTL:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzGq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTM:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaTN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaST:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
