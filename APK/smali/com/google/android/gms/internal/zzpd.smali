.class public final Lcom/google/android/gms/internal/zzpd;
.super Lcom/google/android/gms/measurement/zze;


# instance fields
.field public zzAD:I

.field public zzAE:I

.field private zzVT:Ljava/lang/String;

.field public zzaLt:I

.field public zzaLu:I

.field public zzaLv:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpd;->zzB(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzpd;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhW(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhX(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhY(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhZ(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzia(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpd;->zza(Lcom/google/android/gms/internal/zzpd;)V

    return-void
.end method

.method public zzhW(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    return-void
.end method

.method public zzhX(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    return-void
.end method

.method public zzhY(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    return-void
.end method

.method public zzhZ(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    return-void
.end method

.method public zzia(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    return-void
.end method

.method public zzyA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    return v0
.end method

.method public zzyB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    return v0
.end method

.method public zzyC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    return v0
.end method

.method public zzyD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    return v0
.end method

.method public zzyE()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    return v0
.end method
