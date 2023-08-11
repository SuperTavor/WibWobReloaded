.class public final Lcom/google/android/gms/internal/zzph;
.super Lcom/google/android/gms/measurement/zze;


# instance fields
.field private zzaLA:I

.field private zzaLB:Ljava/lang/String;

.field private zzaLC:Ljava/lang/String;

.field private zzaLD:Z

.field private zzaLE:Z

.field private zzaLF:Z

.field private zzaLy:Ljava/lang/String;

.field private zzaLz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzph;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzph;->zzyL()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzph;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzbI(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLE:Z

    return-void
.end method

.method static zzyL()I
    .locals 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_0

    const-string v0, "GAv4"

    const-string v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private zzyP()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLF:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenViewInfo is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLy:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLE:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLB:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzph;->zzB(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzph;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->setScreenName(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzib(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLA:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLA:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzic(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzdT(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzdU(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLD:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLD:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzam(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLE:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLE:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzph;->zzal(Z)V

    :cond_6
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzph;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzph;->zza(Lcom/google/android/gms/internal/zzph;)V

    return-void
.end method

.method public zzal(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLE:Z

    return-void
.end method

.method public zzam(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLD:Z

    return-void
.end method

.method public zzdT(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLB:Ljava/lang/String;

    return-void
.end method

.method public zzdU(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzib(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    return-void
.end method

.method public zzic(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzph;->zzyP()V

    iput p1, p0, Lcom/google/android/gms/internal/zzph;->zzaLA:I

    return-void
.end method

.method public zzyM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLy:Ljava/lang/String;

    return-object v0
.end method

.method public zzyN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLz:I

    return v0
.end method

.method public zzyO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzph;->zzaLC:Ljava/lang/String;

    return-object v0
.end method
